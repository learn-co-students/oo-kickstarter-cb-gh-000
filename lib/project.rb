class Project

  attr_accessor :title,:backers

  def initialize title
    @title = title
    @backers = []
  end

  def add_backer user
    unless backer? user
      @backers << user
      user.back_project self
    end
  end

  def backer? user
    @backers.include?(user)
  end

end
