class Project

  attr_reader :backers, :title

  def initialize(name)
    @backers = []
    @title = name
  end

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end
end
