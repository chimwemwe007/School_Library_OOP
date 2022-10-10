class CreatePerson
    def initialize(people)
        @people = people
    end
    def create_person
        input = collect_input
        case input
        when 1
           new_student = create_student
            add_to_collection(new_student) 
        when 2
            new_teacher = create_teacher
            add_to_collection(new_teacher)
        else
           puts 'Invalid input option' 
           create_person
        end
    end
    private 
    def collect_input
        print "\n Do you want to create a student (1) or a teacher (2)? [Input the number]: "
        gets.chomp.to_i
    end
    def age_name
        print 'Age:'
        age = gets.chomp.to_i
        print 'Name :'
        name = gets.chomp
        [age,name]
    end
    def collect_specialization
        print 'Specializations:'
        gets.chomp
        
    end
    def get_classsroom
        print 'Enter Classroom:'
        gets.chomp
    end
    def permission(letter)
        (letter.upcase != 'N')
      end
      print 'Has parent permission? [Y/N]: '
      agree = gets.chomp
    def create_student
        age, name = age_name
        classroom = get_classsroom
        Student.new(age, classroom, name, permission(agree))
    end
    def create_teacher
        age, name = age_name
        specialization = collect_specialization
        Teacher.new(age,name,specialization)
    end
    def add_to_collection(person)
        @people.push(person)
        puts "#{person.name} added successfully"
    end
end