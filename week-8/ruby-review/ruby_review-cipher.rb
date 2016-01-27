# Cipher Challenge

# I worked on this challenge by myself
# I spent 3 hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# def dr_evils_cipher(coded_message)
#   # splits the string into an array of single-digit strings
#   input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs.
  
#   # creates an empty array for the decoded message
#   decoded_sentence = []
  
#   # Yes, a hash works well for this
#   # creates a key
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c",
#             "h" => "d",
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}

#   # Loop over each element in the array
#   input.each do |x| # What is #each doing here?
    
#     # default is false at the beginning because no match has been found
#     found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
    
#     # loop through each key of the cipher hash. if the key is equal to the element, replace it with the corresponding value from the hash; else if it;s a special character, replace it with a space; else if it's a number, push the number to the array; else if there is no match, push that to the array
#     cipher.each_key do |y| # What is #each_key doing here?
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
#         decoded_sentence << cipher[y]
#         found_match = true
#         break  # Why is it breaking here?
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
#         decoded_sentence << " "
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
#         decoded_sentence << x
#         found_match = true
#         break
#       end
#     end
#     if not found_match  # What is this looking for?
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")
#   #What is this method returning?
# end

# Your Refactored Solution
def dr_evils_cipher(coded_message)

  input = coded_message.downcase.split("")
  decoded_sentence = []
  alphabet = ('a'..'z').to_a
  spaces = ["@","#","$","%","^","&","*"]
  
  # enter the number of digits you would like the cypher to shift
  letter_shift = 4

  input.each { |char| 
    if alphabet.include?(char)
      decoded_sentence << alphabet[(alphabet.index(char))-letter_shift]
    elsif spaces.include?(char)
      decoded_sentence << " "
    else
      decoded_sentence << char
    end
    }
  
  return decoded_sentence.join("")  
end

# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")

# Reflection
# Keep your reflection limited to 10-15 minutes!

# What concepts did you review or learn in this challenge?
# I spent quite a bit of time reviewing different methods for arrays. I learned that you can use 
# ('a'..'z') to create the alphabet in string format.

# What is still confusing to you about Ruby?
# I still feel like there are more methods I can implement to make the code more streamlined.

# What are you going to study to get more prepared for Phase 1?
# I am going to work through some of the old solutions and refactor them so I can get practice 
# using more methods.

