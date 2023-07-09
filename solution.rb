def compare(num1,num2)
    display_text = ["#{num1} is equal to #{num2}","#{num1} is greater than #{num2}","#{num2} is greater than #{num1}"]
    index_of_text = (num1 <=> num2)
    display_text[index_of_text]
end

def count_characters(string)
    array_of_chars = []
    s = 1
    for i in 0...string.length
      if array_of_chars.any? { |char| char[0] == string[i] }  
        char_index = array_of_chars.find_index { |char| char[0] == string[i] }
        array_of_chars[char_index][1] += 1
      else
        array_of_chars << [string[i], s] 
      end
    end
    array_of_chars
end

puts count("abracadabra")