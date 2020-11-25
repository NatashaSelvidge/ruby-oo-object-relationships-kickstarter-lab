class Project
  attr_reader :title

  def initialize(title)
    @title=title
  end 

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end
  
  def backers
  project_backers = ProjectBacker.all.select do  |pro_b|
      pro_b.project == self
    end 
    project_backers.map do |pro_b|
      pro_b.backer  
    end 
  end
end  