def substrings(string, dictionary)
    dictionary.reduce(Hash.new(0)) do |result, substring|
        occurrences = string.downcase.scan(substring).length
        if occurrences > 0
            result[substring] = occurrences
        end
        result
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)