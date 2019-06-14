class Backer
  attr_accessor :backed_projects
  attr_reader :name
  def initialize(name,backed_projects = [])
    @name = name
    @backed_projects = backed_projects
  end

  def back_project(project)
     self.backed_projects << project
     project.backers << self
  end
end
