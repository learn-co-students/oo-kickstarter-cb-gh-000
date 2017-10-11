
class Project

  @@backers = []

  attr_accessor :title

  def initialize(title)
    @title = title
  end

  def backers
    @@backers
  end

  def add_backer(backer)
    self.backers << backer
    # add the project to the backer's backed_projects array
    backer.backed_projects << self unless backer.backed_projects.include?(self)
  end

end
