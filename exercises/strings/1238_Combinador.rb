# Exercise
# https://www.urionlinejudge.com.br/judge/pt/problems/view/1238

def combinator(string)
  each_string = string.split(' ')
  first_string = each_string[0]
  second_string = each_string[1]

  smaller_than_50_caracters = first_string.size <= 50 && second_string.size <= 50
  bigger_string = first_string.size < second_string.size ? second_string : first_string

  if smaller_than_50_caracters
    result = ""
    bigger_string.chars.each_with_index do |value, index|
      result += "#{first_string[index]}#{second_string[index]}"
    end
  end
  result
end

cases_numbers = gets.to_i
combinator_string = ""
cases_numbers.times do
    strings = gets.strip
    combinator_string += combinator(strings) + "\n"
end
print combinator_string
