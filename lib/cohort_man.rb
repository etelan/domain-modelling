class Student

  attr_reader :name, :jibbled

  def initialize
    @jibbled = false
  end

  def sign_in
    @jibbled = true
    puts "You are jibbled in"
  end

  def sign_out
    @jibbled = false
    puts "You are signed out"
  end

end

class Cohort

  def initialize
    @list = []
  end

  def add_student(student)
    @list << student
  end

  def list_students
    puts @list
  end

  def count_signed_in_students
    # Start tally
    tally = 0

    #Tally up signed in
    @list.each do |student|
      if student.jibbled
        tally += 1
      end
    end

  # Return Tally
  puts tally

  end

end
