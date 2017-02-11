class Backer

  attr_reader :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    if (!@backed_projects.include?(project))
      @backed_projects << project
      @backed_projects[-1].add_backer(self)
    end
  end

end
