# code here!
def School 
    attr_accessor :name, :roster 

    def initialize(name)
        @roster = {}
    end 
    def add_student(name, grade) 
        roster[grade] ||= []
        roster[grade] << name 
    def grade(grade)
        roster[grade]
    end 
    def sort 
        sorted = {}
        @roster.each do |grade, students| 
            sorted[grade] = students.sort 
        end 
        sorted 
    end 
end 