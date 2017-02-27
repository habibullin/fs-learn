class GameRange
  attr_reader :min, :max

  def initialize(min, max)
    @min = min.to_i
    @max = max.to_i
  end 

  def answer(answer)
    answer.include?("y") ? @min = med + 1 : @max = med
  end

  def diff
    @max - @min
  end

  def med
    (@max + @min) / 2
  end
end


range = GameRange.new('0','100')

puts "Загадай число от #{range.min} до #{range.max}, а я его угадаю. Я понимаю ответы Y — да, N — нет."

while range.diff > 1 do
  puts "Это число больше чем #{range.med}?"
  range.answer(a = gets.chomp.downcase)
end

puts "Это число #{range.min}?"
gets.chomp.downcase == "y" ? (puts "Я угадал :)") : (puts "Ты загадал число #{range.max} :)")