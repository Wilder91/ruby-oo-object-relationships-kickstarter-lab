class Project 

    attr_reader :title
    
    @@all = [] 

    def initialize(title)
        @title = title 
        @@all << self
    end
    
    def self.all 
        @@all 
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        project_backer_instances = ProjectBacker.all.select {|project_backer|
            project_backer.project == self}

        project_backer_instances.map {|p|
            p.backer}
    end

end