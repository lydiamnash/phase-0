# numbers to engligh words

in_words(4)         # => "four"
in_words(27)       # => "twenty seven"
in_words(92)       # => "ninety two"



# PSEUDOCODE
1 one
2 two
3 three
4 four
5 five
6 six
7 seven
8 eight
9 nine
10 ten 
11 eleven
12 twelve
13 thirteen
14 fourteen
15 fifteen
16 sixteen
17 seventeen
18 eightteen
19 nineteen
20 twenty
21 twenty-one



# INITIAL SOLUTION

def in_words(number)

	nums = {
		1 => 'one',
		2 => 'two',
		3 => 'three',
		4 => 'four',
		5 => 'five',
		6 => 'six',
		7 => 'seven',
		8 => 'eight',
		9 => 'nine',
		10 => 'ten',
		11 => 'eleven',
		12 => 'twelve',
		13 => 'thirteen',
		14 => 'fourteen',
		15 => 'fifteen',
		16 => 'sixteen',
		17 => 'seventeen',
		18 => 'eighteen',
		19 => 'nineteen',
		20 => 'twenty',
		30 => 'thirty',
		40 => 'forty',
		50 => 'fifty',
		60 => 'sixty',
		70 => 'seventy',
		80 => 'eighty',
		90 => 'ninety',
		100 => 'one hundred'
	}

	if nums.has_key?(number)
		print nums[number]
	else
		num_array = number.to_s.split("").map { |x| x.to_i}

		if num_array.length == 2
			num_array[0] *= 10
			num_array.map! { |x| nums.has_key?(x) }

		else
			print "Your number is over 100... sorry!"
		end
	end
end





# REFACTOR






