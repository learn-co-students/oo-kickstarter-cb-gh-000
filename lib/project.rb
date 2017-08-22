class Project
  attr_accessor :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def backers
    @backers.dup.freeze
  end

  def add_backer(backer)
    @backers << backer if backer.is_a?(Backer)
    backer.back_project(self) unless backer.backed_projects.include? self
  end
end
