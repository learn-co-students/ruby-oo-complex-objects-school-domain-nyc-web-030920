# code here!
def School 
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