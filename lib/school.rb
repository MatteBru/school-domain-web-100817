# code here
require "pry"
class School
  attr_reader :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if !roster.keys.include?(grade)
      roster[grade] = [student]
    else
      roster[grade] << student
    end
  end

  def grade(year)
    roster[year]
  end

  def sort
    #binding.pry
    roster.each {|grade, folks| roster[grade] = folks.sort}
  end
end
#pry.start
