class Backer
  attr_reader :name

  def initialize(name)
    @name=name
  end 

  def back_project(project)
    ProjectBacker.new(project, self)
  end  

  def  backed_projects
    project_backer = ProjectBacker.all.select do |pro_b|
      pro_b.backer == self
    end
    project_backer.map do |pro_b| 
      pro_b.project
    end 
  end 


end 