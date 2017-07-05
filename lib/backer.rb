class Backer
  attr_accessor :name, :project, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    if !@backed_projects.include?(project)
      @backed_projects << project
      project.add_backer(self)
    end
  end

  def backed_projects
    @backed_projects
  end

end
