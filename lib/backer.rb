class Backer
  attr_accessor :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def backed_projects
    @backed_projects.dup.freeze
  end

  def back_project(project)
    @backed_projects << project if project.is_a?(Project)
    project.add_backer(self) unless project.backers.include? self
  end
end
