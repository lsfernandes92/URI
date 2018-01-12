# Exercise: https://www.hackerrank.com/challenges/breaking-best-and-worst-records/problem
# Sample input
#   9
#   10 5 20 20 4 5 2 25 1
def breakingRecords(score)
    times_score_decrease = 0
    times_score_increase = 0
    highest = score[0]
    lowest = score[0]
    score.each do |num|
      if (num > highest)
        highest = num
        times_score_increase += 1
      end

      if (num < lowest)
        lowest = num
        times_score_decrease += 1
      end
    end
end

n = gets.strip.to_i
score = gets.strip
score = score.split(' ').map(&:to_i)
result = breakingRecords(score)
print result.join(" ")
