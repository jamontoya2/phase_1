def canonical(word)
  word.split(//).sort
end

def are_anagrams?(word1, word2)
  canonical(word1) == canonical(word2)
end
p are_anagrams?("amor","omar")

def anagrams_for(text,arr)
  new_arr = []  
    arr.select do |word|
     (canonical(word) == canonical(text)) ?  new_arr << word : false  
    end
  new_arr
end
p anagrams_for("amor",["omar","ramo","roma","animal"]) == ["omar", "ramo", "roma"]


