class Project
  attr_accessor :title,:backers
  def initialize(title)
    @title=title
    @backers = []
  end
  def add_backer(backer)
    backer.back_project(self)
    @backers << backer
  end
end
