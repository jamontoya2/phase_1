def make_board
words = ("POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR")
  words.split("").each.map do |word|
    if word == "X"
       word_to_change = ("A".."Z").to_a[(rand(26))] 
    end 
       word.gsub!(/X/){word_to_change}  
    end
words.join
end



p make_board

