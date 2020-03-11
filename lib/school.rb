# code here!
class School
    attr_accessor :name, :roster

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(name, grade)
        #adds new student tname and grade 
        #to class roster
        roster[grade] ||= []
            roster[grade] << name
    end

    def grade(grade_num)
        #takes in arg of grade 
        #and returns students in that grade
        roster[grade_num]
    end
    def sort
        sorted = {}
        roster.each do |grade, student|
            sorted[grade] = student.sort
        end
        sorted
    end


end