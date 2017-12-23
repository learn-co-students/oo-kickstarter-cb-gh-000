class Backer
  attr_accessor :backed_projects

  def initialize(backed_projects=[])
    @backed_projects = backed_projects
  end
end
