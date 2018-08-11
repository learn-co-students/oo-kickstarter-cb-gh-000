class Backer
  
  attr_accessor :backed_projects
  
  attr_reader :name
  
  def initialize(name="")
      @name = name
      @backed_projects = []
  end 
  
  def back_project(project)
    @backed_projects << project
    if !project.backers.include?(self)
      project.add_backer(self)
    end
  end 

end 