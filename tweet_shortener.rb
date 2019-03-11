# Write your code here.
string = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"
def dictionary
  dictionary = Hash.new
  dictionary['hi'] = "hello"
  dictionary['2'] = ["to","two","too"]
  dictionary['4'] = ["for","four"]
  dictionary['b'] = 'be'
  dictionary['u'] = 'you'
  dictionary["@"] = "at"
  dictionary["&"] = "and"
  return dictionary
end



def word_substituter(string)
  string_array = string.split(" ")
  keywords = dictionary.keys
  matchwords = dictionary.values
  string_array.each do |word|
    matchwords.each_with_index do |matchword,index|
      if word == matchword
        puts word
        # string_array[index] = matchword
        # break
      end
    end
  end
  puts string_array.inspect
end

word_substituter(string)