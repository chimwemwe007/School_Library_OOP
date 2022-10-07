require './person'
class Student < Person
  attr_accessor :classroom

  def initialize(age, classroom, name: 'Unknown', parent_permission: true)
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def class(clssroom)
    @classroom = classroom
    clssroom.students_list.push(self) unless clssroom.students_list.include?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
