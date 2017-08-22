# Building classes that produce objects that relate to one another.
class Project
  # Method initializes the instance variables needed for the class to function.
  attr_accessor :title, :backers
  def initialize(title)
    @title = title
    @backers = []
  end


  # Method takes in the argument of a 'backer' and adds it to the array
  # '@backers', then adds the current instance of the 'Project' object into the
  # associated 'Backer' object #back_project method, but only if that 'Backer'
  # is not already added, to avoid infinite callback looping between the two methods.
  def add_backer(backer)
    @backers << backer
    if !backer.backed_projects.include?(self)
      backer.back_project(self)
    end
  end
end
