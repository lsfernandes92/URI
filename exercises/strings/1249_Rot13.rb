# Exercise
# https://www.urionlinejudge.com.br/judge/pt/problems/view/1249

def ask_for_message
  puts "Hello hunny bunny! Type the message you wanna to be coded:"
  secret_message = gets.strip
  each_letter_of_message secret_message
end

def each_letter_of_message(message)
  each_letter_message = []
  chars = message.split('')
  chars.each { |letter| each_letter_message << letter }
  each_letter_message
end

def letter_coded(index)
  position_to_coded = index + 13
  alphabet_size = @alphabet.count
  if (position_to_coded) > alphabet_size
    diference = alphabet_size - index
    new_position = 12 - diference
    @alphabet[new_position]
  else
    new_position = index + 12
    @alphabet[new_position]
  end
end

def code_message(message)
  coded_message = []
  message.each do |letter_message|
    add_symbol = true
    @alphabet.each do |letter_alphabet|
      if letter_message.downcase == letter_alphabet
        index_of_letter = @alphabet.index(letter_alphabet) + 1
        coded_message << letter_coded(index_of_letter)
        add_symbol = false
      end
    end
    coded_message << letter_message if add_symbol == true
  end
  coded_message
end

range_words_downcase = "a".."z"
range_words_upcase = "A".."Z"
@alphabet = range_words_downcase.to_a

secret_message = ask_for_message
result = code_message secret_message
result.each { |result| print result }
