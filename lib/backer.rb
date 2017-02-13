class Backer

  attr_reader :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    project.add_backer_from_backer(self)
  end

  def back_project_from_project(project)
    @backed_projects << project
  end

end
