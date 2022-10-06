require_relative 'person'

class Teacher < Person
<<<<<<< HEAD
  def initialize(specialization)
=======
  def initialize(age, specialization, name = "Unknown", parent_permission = true)
>>>>>>> 0174096c2b01a43c4c27af90f479aa3ba3fddc58
    super(name, age, parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
