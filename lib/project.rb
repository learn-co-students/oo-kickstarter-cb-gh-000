class Project
  attr_reader :title
  attr_accessor :backers
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def add_backer(backer)
    self.backers << backer
    backer.back_project(self) unless backer.backed_projects.include?(self)
  end
end