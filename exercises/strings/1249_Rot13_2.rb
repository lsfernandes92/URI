# Exercise
# https://www.urionlinejudge.com.br/judge/pt/problems/view/1249

def ask_for_message
  puts "Hello hunny bunny! Type the message you wanna to be coded:"
  secret_message = gets(nil).strip
end

def print_result(result)
  puts result
end

def code_letter(letter)
  alphabet = Array("a".."z")
  alphabet_upsidedown = alphabet.zip(alphabet.rotate(13)).to_h

  has_letter_downcase = alphabet_upsidedown.key?(letter)
  has_letter_upcase = alphabet_upsidedown.key?(letter.downcase)

  if has_letter_downcase
    alphabet_upsidedown[letter]
  elsif has_letter_upcase
    alphabet_upsidedown[letter.downcase].upcase
  else
    letter
  end
end

def code_message(message)
  coded_message = []
  message.each { |value| coded_message << code_letter(test_case_line) }
  coded_message[3].size
end

secret_message = ask_for_message
result = code_message secret_message
print_result result
