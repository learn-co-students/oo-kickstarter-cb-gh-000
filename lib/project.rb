class Project

  attr_accessor :backers, :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    backer.backed_projects << self
    self.backers << backer
  end

end
