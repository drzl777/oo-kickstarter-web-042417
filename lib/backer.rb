class Backer

  attr_accessor :backed_projects, :name


  def initialize(name)
    self.name = name
    self.backed_projects = []
  end

  def back_project(project)
    if !self.backed_projects.member?(project)
      self.backed_projects << project
      project.add_backer(self)
    end
  end



end
