def searchPrefix(arr,s)

    finalArray = [] # array to hold values that match s

    arr.each do |value| # for each value in array
        if value[0, s.length] == s # if the first part of the string matches the prefix
            finalArray.push(value) # add value to the arra
        end
    end

    return finalArray # return array

end

answer = "y" # variables for rerun and for user choice
choice = ""

print "This program allows you to search through a given array for items that start with a specified string." # program intro

while answer == "y" # while loop for rerun

    print "\nWould you like to use a test case or enter your own? (1 / 2) "
    choice = gets.chomp
 
    if choice == "1" # if they want to use a test case
        
        arr1=["abcde", "abdf", "adeab", "abdgse", "bdefa", "bacdef"]
        print "\nThe test array is "
        print arr1
        puts "\nThe first prefix to be searched by is 'ab'."
        print "The values matching 'ab' are "
        print(searchPrefix(arr1,"ab"))

        puts "\nThe second prefix to be searched by is 'b'. "
        print "The values matching 'b' are "
        print(searchPrefix(arr1,"b"))

    elsif choice == "2" # if they want to make their own array

        puts "\nEnter an array of values below, separated by spaces: "

        userArray = [] # empty array for user input
        userInput = gets.chomp 
        userArray = userInput.split(" ") # splits user input into an array by spaces, stores in userArray

        print "\nInput: "
        print userArray
        answer1 = "y"

        while answer1 == "y"

            print "\nWhat would you like to search by? "
            userInput = gets.chomp

            print "\nThe values matching #{userInput} are "
            print(searchPrefix(userArray, userInput))

            print "\nEnter Y to search again, enter any other key to exit: "
            answer1 = gets.chomp

        end
        
    else 
        print "\nInvalid input." # error message for invalid choice
    end 
        
        print "\nEnter Y to run this program again, enter any other key to quit: " # rerun prompt
        answer = gets.chomp.downcase # any value != y or Y will break while loop

end

puts "\nThank you for using this program!" # goodbye message
puts "Quitting... "