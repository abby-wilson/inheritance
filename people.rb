class Person
  def initialize (first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    puts "Hi, my name is #{@first_name} #{@last_name}"
  end

class Student < Person

  # def initialize(first_name, last_name)
  #   super(first_name, last_name)
  # end

  def learn
    puts "I get it!"
  end
end

class Instructor < Person

  # def initialize(first_name, last_name)
  #   super(first_name, last_name)
  # end

  def teach
    puts "Everything in Ruby is an Object"
  end

end

i = Instructor.new("Chris", "Instructor")
puts i.full_name
puts i.teach

s = Student.new("Christina", "Student")
puts s.full_name
puts s.learn
end

# Student isn't a parent class of Instructor and vice versa.
