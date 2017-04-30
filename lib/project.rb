class Project

  attr_accessor :title, :backers

  def initialize(title)
    self.title = title
    self.backers = []
  end

  def add_backer(backer)
    if !self.backers.member?(backer)
      self.backers << backer
      backer.back_project(self)
    end
  end

end
