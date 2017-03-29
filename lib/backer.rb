class Backer

  attr_accessor :name,:backed_projects

  def initialize name
    @name = name
    @backed_projects = []
  end

  def back_project project
    unless backed_project? project
      @backed_projects << project
      project.add_backer self
    end
  end

  def backed_project? project
    @backed_projects.include?(project)
  end

end
