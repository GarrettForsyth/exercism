# Models a small school
class School
  def initialize
    @students = []
    @max_grade = 12
  end

  # Returns list of students names in a given grade
  def students(grade)
    @students.select { |student| student.grade == grade }
             .map(&:name)
             .sort
  end

  def students_by_grade
    list = []
    @max_grade.times { |n| list << { grade: n + 1, students: [] } }
    @students.each_with_object(list) do |student, l|
      l[student.grade - 1][:students] << student.name
    end
    list.reject { |grade| grade[:students].empty? }
        .map { |i| { grade: i[:grade], students: i[:students].sort } }
  end

  def add(name, grade)
    @students << Student.new(name, grade)
  end
end

# Models a student object
class Student
  attr_accessor :name, :grade

  def initialize(name, grade)
    @name = name
    @grade = grade
  end
end

module BookKeeping
  VERSION = 3
end
