class Backer
attr_accessor :name , :backed_projects
def initialize(name)
  @name = name
@backed_projects = []
end
def back_project(bp)
  @backed_projects << bp
  bp.backers << self
end
end
