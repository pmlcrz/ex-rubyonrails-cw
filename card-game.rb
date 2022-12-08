# This method turns the letters of cards into an integer that represents their position in the playing cards
def to_num char
   if char == 'T'
    10
   elsif char == 'J'
    11
   elsif char == 'Q'
    12
   elsif char == 'K'
    13
   elsif char == 'A'
    14
   else
    char.to_i
   end
end


def winner(deckSteve, deckJosh)
    # i is an iterator that will be used as an index to get `deckJosh` items
    i = 0
    # setting scores to 0 as an initial state
    scoreSteve = 0
    scoreJosh = 0

    # Iterating over `deckSteve` array
    deckSteve.each {|x|

        # checking which one holds the biggest card at each iteration and adding one point to the winner's score
        if to_num(x) > to_num(deckJosh[i])
            scoreSteve += 1
        elsif to_num(x) < to_num(deckJosh[i])
            scoreJosh += 1
        end
        i += 1
    }

    # comparing the final scores to determine the winner
    if scoreSteve == scoreJosh
        "Tie"
    elsif scoreSteve > scoreJosh
        "Steve wins #{scoreSteve} to #{scoreJosh}"
    elsif scoreJosh > scoreSteve
        "Josh wins #{scoreJosh} to #{scoreSteve}"
    end
end


# Testing our method
print(winner(['A', '2', 'K', 'Q', '2'], ['A', '4', '3', '2', 'A']) + "\n") # Output: Tie
print(winner(['4', '2', 'A', 'A', '4'], ['J', '4', 'K', '2', 'A']) + "\n") # Output: Josh wins 3 to 2
print(winner(['8', 'K', '9', 'A', 'Q'], ['A', '4', 'K', '2', '3']))        # Output: Steve wins 3 to 2