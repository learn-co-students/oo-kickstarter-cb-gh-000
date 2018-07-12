class Project
  attr_accessor :backers, :title

  def initialize(title, backers = [])
    @title = title
     @backers = backers
  end

  def add_backer(backer)
     self.backers << backer
     backer.backed_projects << self
  end
end
