class School
attr_reader :name  
    def initialize(name)
        @name = name
        @roster = {}
    end 

    def roster
        @roster
    end 

    def add_student(name, grade)
        if roster[grade]
            roster[grade] << name
        else 
        roster[grade] = []
        roster[grade] << name
        end 
    end 

    def grade(grade) 
        return roster[grade]
    end 

    def sort 
        roster.each do |k, v|
            v.sort!
        end 
    end 
end 