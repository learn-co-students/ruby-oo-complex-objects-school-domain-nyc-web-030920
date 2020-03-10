
require "pry"
class School
    attr_accessor :roster
def initialize(name)
    
@roster = {}
end
def add_student(name, grade)
    if !(@roster.include?(grade))
        @roster[grade]= [name]
    else
        @roster[grade] << name 
    end
end

def grade(grade)
    @roster[grade]
    
end

def sort()
    sort ={}
@roster.map {|k,v| sort[k]=v.sort}
sort
end
end