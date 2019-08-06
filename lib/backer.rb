class Backer
  @@all = []
  attr_reader :backed_projects
  attr_accessor :name

  def initialize(name)
    @backed_projects = []
    @name = name
  end

end
