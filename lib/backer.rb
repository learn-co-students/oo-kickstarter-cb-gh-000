class Backer
  attr_reader :name
  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def backed_projects
      @backed_projects.dup.freeze
  end
  def back_project(project)
    unless @backed_projects.include?(project)
      @backed_projects << project
      project.add_backer(self)
    end
  end
end
