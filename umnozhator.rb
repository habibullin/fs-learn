class Number
  def initialize(answer)
    @answer = answer

    while is_number? (@answer)
      puts "Нужно ввести только цифры от 0 до 9, без букв или других символов"
      @answer = gets.chomp
    end

    result (@answer)
  end

  def is_number? answer
    !/\A\d+\z/.match(answer)
  end

  def result answer
    mult = 1
    answer.split('').each { |i| mult *= i } #'*': String can't be coerced into Fixnum (TypeError)
    puts mult
  end
end

puts "Введи любое число, а я посчитаю произведение его цифр"
answer = Number.new(gets.chomp)