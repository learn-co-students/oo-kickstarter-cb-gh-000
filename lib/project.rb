class Project
  attr_reader :title
  def initialize(title)
    @title = title
    @backers = []
  end

  def backers
      @backers.dup.freeze
  end
  def add_backer(backer)
    unless @backers.include?(backer)
      @backers << backer
      backer.back_project(self)
    end
  end
end
