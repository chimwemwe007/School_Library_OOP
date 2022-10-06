require_relative 'person'

class Student < Person
<<<<<<< HEAD
  def initialize(classroom)
    super(name, age, parent_permission)
    @classroom = classroom
=======
  def initialize(age, classroom, name = "Unknown", parent_permission = true)
    super(name, age, parent_permission)
    @classroom = classroom
    
>>>>>>> 0174096c2b01a43c4c27af90f479aa3ba3fddc58
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
