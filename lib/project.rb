class Project

  attr_accessor :backers
  attr_reader :title


  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers.push(backer)
    #remember that backer.backed_projects is an array
    backer.backed_projects.push(self)
  end

end
