class Number
  def initialize(answer)
    @answer = answer

    while is_number? (@answer) #&& @answer.length == 6
      puts "Нужно ввести 6-значное число без букв или других символов"
      @answer = gets.chomp
    end

    arr = @answer.scan(/.../).map {|e| e }
    first = count (arr[0])
    last = count (arr[1])

    first == last ? (puts "Счасливый билет :)") : (puts "Не повезло — это обычный билет :(")
  end

  def is_number? answer
    !/\A\d+\z/.match(answer)
  end

  def count arr
    n = 0
    arr.split("").map(&:to_i).each { |i| n += i }
    return n
  end
end


puts "Введи 6-значный номер билета, а я скажу счастливый он или нет"
answer = Number.new(gets.chomp)