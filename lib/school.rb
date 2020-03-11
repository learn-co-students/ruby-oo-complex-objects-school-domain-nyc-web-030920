require 'pry'

class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster 
    @roster
  end

  def add_student(name, grade)
    
    if @roster[grade]
      @roster[grade] << name
    
    else
      @roster[grade] = []
      @roster[grade] << name
    end

  end

  def grade(grade)
    @roster[grade]
  end

  #for each grade, sort students alphabetically 
  def sort
    sorted_students = {}
    @roster.each do |grade, student|
      sorted_students[grade] = student.sort
    end
    sorted_students
    # binding.pry
  end


end
