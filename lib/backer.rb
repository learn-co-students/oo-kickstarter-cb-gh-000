class Backer
  attr_accessor :backed_projects
  attr_reader :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects.push(project)
    #remember that project.backers is an array
    project.backers.push(self)
  end
end
