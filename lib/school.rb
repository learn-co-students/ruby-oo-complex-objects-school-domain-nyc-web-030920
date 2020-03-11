# code here!
# require 'pry'
class School
    attr_accessor :school_name, :roster


    def initialize(school_name)
        @school_name = school_name
        @roster = Hash.new


    end

    def add_student(name, grade)
        
        if @roster.has_key?(grade)
            @roster[grade] << name
        else
            new_key(@roster, grade)
            @roster[grade] << name
        end

    end

    def new_key(hash, key)
        hash[key] = []
    end

    def grade(grade)
        if @roster.has_key?(grade)
            @roster[grade]
        else
            puts "Please enter a valid grade-year"
        end
    end

    def sort
        @roster = @roster.transform_values{|value| value.sort }
    end

end

#passes all tests


 