def credit_check(card_number)
  valid = false
  #split string into array, convert each number into integer
  card_number = card_number.split("").map{|number| number.to_i}

  #From the rightmost digit, going left, double every second digit
  ##reverse to iterate over

  ##Rather than make a cascade, make these into their own methods,
  ### helps with readability, descriptive names
  #### lets you reuse your code
  ####So, break it into 
  card_number = card_number.reverse 
  length = card_number.length
  index = 1
  while index < length
    card_number[index] = ((card_number[index]) * 2)
    index += 2
  end

  #split any double digits, transform to._i, then add together and modify original array
  card_number.map!.with_index do |number, index|
      number = number.to_s.split("")
      number[0].to_i + number[1].to_i
  end

  sum = 0
  card_number.each{ |number| sum += number}

  #if total % 10 == 0, the number is valid
  if (sum % 10 == 0)
    valid = true
  end
  

  if valid == true 
    puts "The number is valid!"
  else
    puts "The number is invalid!"
  end
end

# Output
## If it is valid, print "The number is valid!"
credit_check("4929735477250543")
## If it is invalid, print "The number is invalid!"
credit_check("5541801923795240")

##American Express numbers
###valid
credit_check("342804633855673")
###invalid
credit_check("342801633855673")



#Questions:

#do I need to keep the "valid = true" line 27? it doesn't add function
# but it does make code clearer?

#should I leave my comments or clear them up? 
## make your methods self-explanatory, good names, then everything can be read naturally

# Would an expert rubyist have broken this into more methods? YES!!!
#where?



#Every method should have Single Responsibility.


  ##Rather than make a cascade, make these into their own methods,
  ### helps with readability, descriptive names
  #### lets you reuse your code
  ####So, break it into 

##