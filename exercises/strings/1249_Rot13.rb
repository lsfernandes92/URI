# Exercise
# https://www.urionlinejudge.com.br/judge/pt/problems/view/1249

def ask_for_message
  puts "Hello hunny bunny! Type the message you wanna to be coded:"
  secret_message = gets(nil).strip
  each_letter_of_message secret_message
end

def print_result(result)
  result.each { |r| print r }
end

def each_letter_of_message(message)
  each_letter_message = []
  chars = message.split('')
  chars.each { |letter| each_letter_message << letter }
  each_letter_message
end

def letter_coded(letter)
  index_of_letter = @alphabet_downcase.index(letter) + 1
  position_to_coded = index_of_letter + 13
  alphabet_size = @alphabet_downcase.count
  if (position_to_coded) > alphabet_size
    diference = alphabet_size - index_of_letter
    new_position = 12 - diference
    @alphabet_downcase[new_position]
  else
    new_position = index_of_letter + 12
    @alphabet_downcase[new_position]
  end
end

def code_message(message)
  coded_message = []
  message.each do |letter_message|
    add_symbol = true
    letter_downcase_include = @alphabet_downcase.include? letter_message
    letter_upcase_include = @alphabet_upcase.include? letter_message
    if letter_downcase_include
      coded_message << letter_coded(letter_message)
      add_symbol = false
    end
    if letter_upcase_include
      coded_message << letter_coded(letter_message.downcase).upcase
      next
    end
    coded_message << letter_message if add_symbol
  end
  coded_message
end

range_words_downcase = "a".."z"
range_words_upcase = "A".."Z"
@alphabet_downcase = range_words_downcase.to_a
@alphabet_upcase = range_words_upcase.to_a

secret_message = ask_for_message
result = code_message secret_message
print_result result
