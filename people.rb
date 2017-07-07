class Person
  def initialize (first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    puts "Hi, my name is #{@first_name} #{@last_name}"
  end

class Student < Person

  def learn
    puts "I get it!"
  end
end

class Instructor < Person
  def teach
    puts "Everything in Ruby is an Object"
  end

end
