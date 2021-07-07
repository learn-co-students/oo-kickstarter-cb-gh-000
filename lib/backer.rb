
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
    # add the backer to the project's backers array
    project.backers << self unless project.backers.include?(self)
  end

end
