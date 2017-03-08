#v1 with user input
# class Number
#   def initialize(answer)
#     @answer = answer

#     while is_number? (@answer) or @answer.length != 6
#       puts "Нужно ввести 6-значное число без букв или других символов"
#       @answer = gets.chomp
#     end

#     arr = @answer.scan(/.../).map {|e| e }
#     first = count (arr[0])
#     last = count (arr[1])

#     first == last ? (puts "Счасливый билет :)") : (puts "Не повезло — это обычный билет :(")
#   end

#   def is_number? answer
#     !/\A\d+\z/.match(answer)
#   end

#   def count arr
#     n = 0
#     arr.split("").map(&:to_i).each { |i| n += i }
#     return n
#   end
# end


# puts "Введи 6-значный номер билета, а я скажу счастливый он или нет"
# answer = Number.new(gets.chomp)



#v2 with file read
def count number
  n = 0
  number.split("").map(&:to_i).each { |i| n += i }
  return n
end

arr = File.read("out-randomizator.txt").split("\n")

arr.each { |x|
  numb = x.scan(/.../).map {|e| e }
  first = count (numb[0])
  last = count (numb[1])
  first == last ? (x.to_s << "_1") : (x.to_s << "_0")
}

File.open('out-happyficator.txt', 'w'){ |file|
    file.puts arr
}