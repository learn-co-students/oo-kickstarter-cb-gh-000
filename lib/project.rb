class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(person)
    @backers << person
    person.backed_projects << self
  end

end