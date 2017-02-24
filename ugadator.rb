class GameRange
  def initialize(min, max)  
    $min = min.to_i
    $max = max.to_i
  end 

  # def display  
  #   puts "Min is #{$min} and Max is #{$max}"  
  # end 
  
  def set_min(min)
    $min = min
  end

  def set_max(max)
    $max = max
  end

  def answer(answer)
    answer == "y" ? set_min(med + 1) : set_max(med)
    # display
  end

  def diff
    $max - $min
  end

  def med
    ($max + $min) / 2
  end
end


range = GameRange.new('0','100')

while range.diff > 1 do
  puts "Это число больше чем #{range.med}?"
  range.answer(a = gets.chomp.downcase)
end

puts "Это число #{$min}?"
gets.chomp.downcase == "y" ? (puts "Я угадал :)") : (puts "Ты загадал число #{$max} :)")