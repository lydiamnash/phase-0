# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 6 hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #INPUT: none
  #OUTPUT: a letter and a number
  #STEPS: 
    # new var equal to random letter B - O
    # new var equal to random number 1 - 100

# Check the called column for the number called.
  #INPUT: board, let, num
  #OUTPUT: updated board
  #STEPS: 
    # Put the randomly generated letter into a hash
    # Use the hash value to check the index of each sub array
    # Replace = "X" if match

# Display the board to the console (prettily)
  #INPUT: bingo board
  #OUTPUT: series of arrays
  #STEPS: 
    # p a "BINGO" header
    # p each array underneath


# Initial Solution
=begin
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @let = ["B","I","N","G","O"].sample
    @num = rand(1..100)
    print @let
    print @num
  end

  def check
    @index = {
      "B" => 0,
      "I" => 1,
      "N" => 2,
      "G" => 3,
      "O" => 4,
      }

    @hit = []

    @counter = 0
    while @counter < 5
      if @bingo_board[@counter][@index[@let]] == @num
        @hit.push(@counter)
        @hit.push(@index[@let])
        p @hit
        exit
      else
        @counter += 1
      end
    end
  end

  def replace
    if @hit.empty?
    else
      @bingo_board[@counter][@index[@let]] = "X"
      print @bingo_board
    end
  end

  def print
    p "B   I   N   G   O"
    p @bingo_board[0]
    p @bingo_board[1]
    p @bingo_board[2]
    p @bingo_board[3]
    p @bingo_board[4]
  end
end
=end

# Refactored Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @let = rand(0..4)
    @num = rand(1..100)
  end

  def check
    @bingo_board.each do |array|
      replace array[@let] = "X" if array[@let] ==  @num
    end
  end

  def print
    p "B   I   N   G   O"
    p @bingo_board[0]
    p @bingo_board[1]
    p @bingo_board[2]
    p @bingo_board[3]
    p @bingo_board[4]
  end
end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)


#Reflection
# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# The pseudocoding was difficult, but I laid out a basic template and then revised it as I worked through the challenge. For me, it works well to be able to go back and make changes if needed. This was the hardest challenge to pseudocode yet!

# What are the benefits of using a class for this challenge?
# The benefit to using a class is that you can run a series of multiple methods on a specific type of data, which in this case is a bingo board.

# How can you access coordinates in a nested array?
# You can access coordinated by listing the array's name, then the index of the sub-array you want to access, then the index of the number within that array you want.

# What methods did you use to access and modify the array?
# I didn't use any new methods in my final solution, but I did play around with the "with_index" method, but didn't end up using it.

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
# As mentioned above, I played around with the with_index, but didn't eventually using that. 

# How did you determine what should be an instance variable versus a local variable?
# The local variable are those that weren't carried between methods. 

# What do you feel is most improved in your refactored solution?
# The logic is much more streamlined for cycling through the arrays. WAY more streamlined. I worked on this for a long time, so I was really happy that I could get that to work finally.

