# code here!
def School 
    attr_reader :roster 

    def initialize(name)
        @name = name 
        @roster = []
    end 
    def add_student(name, grade) 
        if roster[grade]
            roster[grade] << name 
        else
            roster[grade] = [] 
            roster[grade] << name 
        end 
        roster[grade] << name 
    end 
    def grade(grade)
        roster[grade]
    end 
    def sort 
        @roster.each do |k, v| 
            v.sort 
        end 
    end 
end 