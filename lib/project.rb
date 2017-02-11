class Project

  attr_reader :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    if (!@backers.include?(backer))
      @backers << backer
      @backers[-1].back_project(self)
    end
  end
end
