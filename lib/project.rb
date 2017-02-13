class Project

  attr_reader :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    backer.back_project_from_project(self)
  end

  def add_backer_from_backer(backer)
    @backers << backer
  end

end
