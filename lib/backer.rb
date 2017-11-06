class Backer

  @@backed_projects = []

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def backed_projects
    @@backed_projects
  end

  def back_project(project)
    self.backed_projects << project
    project.backers << self unless project.backers.include?(self)
  end

end
