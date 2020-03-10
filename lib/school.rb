# code here!
require 'pry'

class School
    def initialize(school)
        @school = school
        @roster = {}
    end

    def roster
        @roster
    end
 
    def add_student(student_name, grade)
        if 
            roster[grade]
            roster[grade] << student_name
        else
            roster[grade] = []
            roster[grade] << student_name
        end
    end

    def grade(grade)
        roster[grade]
    end


    def sort
        roster.each do |grade, name|
             name.sort!
        end
    end
end
