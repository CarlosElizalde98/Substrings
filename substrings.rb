def substrings(words, dictionary)
  newWords = words.downcase.split(" ")
  strings = Hash.new
  newWords.each do |word|
    dictionary.each do |value|
      if word.include?(value)
        strings[value] = 0
      end
    end
  end
  dictionary.each do |word|
    newWords.each_with_index do |value, index|
    if newWords[index].include?(word)
      strings[word] += 1
    end
  end
end
  return p strings
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)
