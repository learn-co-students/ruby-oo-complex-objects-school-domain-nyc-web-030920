# code here!
def School 
    attr_accessor :name, :roster 

    def initialize(name)
        @roster = {}
    end 
    def add_student(name, grade) 
        if !(@roster.include?(grade))
            @roster[grade] = [name]
        else
            @roster[grade] << name 
        end 
    end 
    def grade(grade)
        @roster[grade]
    end 
    def sort 
        sorted = {}
        @roster.map do |k, v| 
            sorted[k] = v.sort 
        end 
        sorted 
    end 
end 