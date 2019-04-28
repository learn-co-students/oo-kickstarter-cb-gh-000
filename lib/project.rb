class Project
  attr_reader :title
  attr_accessor :backers, :backer
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def backers
    @backers
  end
  
  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end
  
end