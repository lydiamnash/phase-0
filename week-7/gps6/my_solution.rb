# Virus Predictor

# I worked on this challenge with Byron Gage.
# We spent 1.2 hours on this challenge.

# EXPLANATION OF require_relative
# require: requires another file that is not in the directory to continue. 
# require_relative: requires another file which is contained in that directory.
#
#
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

#   def full_report
#     STATE_DATA.each do |state_name, data|
#       predicted_deaths(data[:population_density],data[:population],state_name)
#       speed_of_spread(data[:population_density],state_name)
#     end
#   end
  
  private

  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density
      when 0..49
        number_of_deaths = (@population * 0.05).floor       
      when 50..99
        number_of_deaths = (@population * 0.1).floor
      when 100..149
        number_of_deaths = (@population * 0.2).floor
      when 150..199
        number_of_deaths = (@population * 0.3).floor
      else 
        number_of_deaths = (@population * 0.4).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    case @population_density
      when 0..49
        speed += 2.5
      when 50..99
        speed += 2
      when 100..149
        speed += 1.5
      when 150..199
        speed += 1
      else
        speed +=0.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

  
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


# alabama.full_report


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# One uses the rocket hash, the other uses a colon.

# What does require_relative do? How is it different from require?
# Require relative requires another file that is in the same directory to run this file. Require means another file is required, but the entire file path will need to be entered.

# What are some ways to iterate through a hash?
# We used case. You can also use each or each_with_index.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# In regard to the variables, we were paying most attention to the scope of them. As our guide pointed out, one of the methods was passing two other methods with instance vars as their arguments which wasn't necessary.

# What concept did you most solidify in this challenge?
# Although I didn't solidify my understanding of variable scope, this exercise helped a lot. With more practice, I think I'll get there.

