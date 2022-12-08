def order(words)
    # Checking if the words argument is an empty string
    if words == ""
        ""
    
    # If the words argumet isn't empty we will sort it
    else
    
    # Defining a new hash that will help us sort words using integers as keys
    map = {}

    # Defining a new array that will hold all of our words sorted
    sorted = []
    
    # converting the words string into an array and iterating over its items
    words.split(' ').each {|x|
    
    # converting each word into an array of characters to extract the number
    x.split('').each{|y|

    # extracting the numbers
    if y.to_i() != 0

        # adding a pair of (number => word that includes that number) in the hash
        map[y.to_i()] = x
    end
    }
    }

    # extracting an array of key from the has and sorting it
    keys = map.keys.sort

    # for each key in the keys array we will get it's value from the hash and add it to the `sorted` array
    keys.each{|z|
        sorted[z] = map[z]
    }

    # removing the space character from the start of the `sorted` array
    sorted.join(" ").slice(1, sorted.join(" ").length - 1)
end
end

# Testing our method
puts order("Hell3o Th1is I4s Th7e Wor6ld W5e Li2ke")
puts order("4of Fo1r pe6ople g3ood th5e the2")
puts order("is2 Thi1s T4est 3a")