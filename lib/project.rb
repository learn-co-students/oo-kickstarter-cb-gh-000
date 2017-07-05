class Project
  attr_accessor :title, :backer, :backers

  def initialize(title)
    @title = title
    @backers = []

  end

  def add_backer(backer)
    if !@backers.include?(backer)
      @backers << backer
      backer.back_project(self)
    end
  end

  def backers
    @backers
  end

end
