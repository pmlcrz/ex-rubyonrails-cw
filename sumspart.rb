def parts_sums(ls)
        ls.reduce([ls.sum]) { |sums, x|
            sums << sums.last - x 
        }
end

# Testing our method
print parts_sums([0, 3, 4, 5])
print parts_sums([])
print parts_sums([5, 16, 3, 9])
print parts_sums([1, 1, 23, 4, 0, 11])