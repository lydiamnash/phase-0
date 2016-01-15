# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #INPUT: none
  #OUTPUT: a letter and a number
  #STEPS: 
    # new var equal to random letter B - O
    # new var equal to random number 1 - 100

# Check the called column for the number called.
  #INPUT: none
  #OUTPUT: true
  #STEPS:

# If the number is in the column, replace with an 'x'
  #INPUT:
  #OUTPUT:
  #STEPS:

# Display a column to the console
  #INPUT:
  #OUTPUT:
  #STEPS:

# Display the board to the console (prettily)
  #INPUT:
  #OUTPUT:
  #STEPS:

# Initial Solution

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

@bingo_board.each do |sub_array|
  if @bingo_board[@let] ==  @num
    print "woop!"
  else
  end
end


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





#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)


#Reflection