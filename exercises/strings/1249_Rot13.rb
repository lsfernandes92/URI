# Exercise
# https://www.urionlinejudge.com.br/judge/pt/problems/view/1249

def ask_for_message
  secret_messages = []
  loop do
    secret_message = gets.strip
    break if secret_message == "EOF"
    secret_messages << secret_message
  end
  secret_messages
end

def print_result(result)
  result.each { |r| puts r }
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

def code_messages(messages)
  coded_message = []
  message_coded = ""
  messages.each do |message|
    message.chars.each do |letter|
      message_coded += code_letter(letter)
    end
    coded_message << message_coded
    message_coded = ""
  end
  coded_message
end

secret_messages = ask_for_message
result = code_messages secret_messages
print_result result
