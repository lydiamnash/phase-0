# Introduction to Inheritance

# I worked on this challenge Baron Kwan.


# Pseudocode
# Attributes

# GLOBAL 
# p0_start_date
# name
# students  
# email_list
# immersive_start_date (this will be calculated based off the p0_start_date)
# graduation_date (this will be calculated based off the p0_start_date)

# LOCAL
# city
# students (override inherited property)
# email_list (override inherited property)
# num_of_students (override inherited property)

# Methods
# add_student : ADD A STUDENT TO A COHORT
# remove_student : Check if student is in cohort, then remove
# currently_in_phase : returns number 0,1,2,3
# graduated? : returns boolean


# INITIAL SOLUTION
# require 'date'

# class GlobalCohort

#   attr_accessor :students, :name
  
#   def initialize(p0_start_date, name, students, email_list)
#     @p0_start_date = Date.parse(p0_start_date)
#     @name = name
#     @students = students
#     @email_list = email_list
#     @immersive_start_date = @p0_start_date + 70
#     @graduation_date = @p0_start_date + 133  
#   end

#   def add_student(student)
#     @students.push(student)
#   end
  
#   def remove_student(student)
#     @students.delete(student)
#   end
  
#   def currently_in_phase
#     if @immersive_start_date > Date.today
#       return 0
#     elsif @immersive_start_date + 21 > Date.today
#       return 1
#     elsif @immersive_start_date + 42 > Date.today
#       return 2
#     elsif @immersive_start_date + 63 < @graduation_date
#       return 3
#     end
#   end
  
  
#   def graduated?
#     return @graduation_date < Date.today
#   end

  
# end

# class LocalCohort < GlobalCohort
  
#   attr_accessor :num_of_students
  
#   def initialize(city,students,email_list)
#     @city = city
#     @students = students
#     @email_list = email_list
#   end
  
#   def num_of_students
#     @students.length
#   end
  
# end



# REFACTORED SOLUTION
require 'date'

class GlobalCohort

  attr_accessor :students, :name
  
  def initialize(p0_start_date, name, students, email_list)
    @p0_start_date = Date.parse(p0_start_date)
    @name = name
    @students = students
    @email_list = email_list
    @immersive_start_date = @p0_start_date + 7*10
    @graduation_date = @p0_start_date + 7*19
  end

  def add_student(student_name)
    @students.push(student_name)
  end
  
  def remove_student(student_name)
    @students.delete(student_name)
  end
  
  def currently_in_phase
    for i in 0..4
      if @immersive_start_date + (i*21) > Date.today
        return i
      elsif self.graduated?
        return "This cohort already graduated."
      end
    end
  end
    
  def graduated?
    return @graduation_date < Date.today
  end
 
end

class LocalCohort < GlobalCohort
  
  attr_accessor :num_of_students
  
  def initialize(city,students,email_list)
    @city = city
    @students = students
    @email_list = email_list
  end
  
  def num_of_students
    @students.length
  end
  
end


# DRIVER CODE
fiddlerCrabs = GlobalCohort.new("2015-10-30","FiddlerCrabs",["Baron Kwan","Lydia Nash","Jerry Seinfeld"],["Lydiamnash@gmail.com"])


# p fiddlerCrabs.add_student("David")
# p fiddlerCrabs.students
# p fiddlerCrabs.remove_student("David")
# p fiddlerCrabs.students
# print fiddlerCrabs.graduated?

p fiddlerCrabs.currently_in_phase

# fiddlerCrabs_chicago = LocalCohort.new("Chicago",["Joe Smith","Patty Smith","John Smith","Will Smith"],["@JoeSmith","@PattySmith","@JohnSmith","@WillSmith"])

# fiddlerCrabs_chicago.add_student("Mary Smith")
# fiddlerCrabs_chicago.remove_student("Joe Smith")
# fiddlerCrabs_chicago.remove_student("Patty Smith")

# p fiddlerCrabs_chicago.num_of_students




# Reflection