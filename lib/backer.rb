class Backer
  def initialize(name)
    @name = name
    @backed_projects = []

  end

  attr_accessor :name, :backed_projects

  def back_project(project)
    @backed_projects << project
    project.backers << self

  end
end
