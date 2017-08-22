# Building classes that produce objects that relate to one another.
class Backer
  # Method initializes the instance variables needed for the class to function.
  attr_accessor :name, :backed_projects
  def initialize(name)
    @name = name
    @backed_projects = []
  end


  # Method takes in the argument of a 'project' and adds it to the array
  # '@backed_projects', then adds the current instance of the 'Backer' object
  # into the associated 'Project' object #add_backer method, but only if that
  # 'Project' is not already added, to avoid infinite callback looping between
  # the two methods.
  def back_project(project)
    @backed_projects << project
    if !project.backers.include?(self)
      project.add_backer(self)
    end
  end
end
