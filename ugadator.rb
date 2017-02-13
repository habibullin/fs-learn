# Это не константы, т.к. ниже я перезаписываю их значение
min = 0
max = 100

puts "
dP     dP                         dP            dP                     
88     88                         88            88                     
88     88 .d8888b. .d8888b. .d888b88 .d8888b. d8888P .d8888b. 88d888b. 
88     88 88'  `88 88'  `88 88'  `88 88'  `88   88   88'  `88 88'  `88 
Y8.   .8P 88.  .88 88.  .88 88.  .88 88.  .88   88   88.  .88 88       
`Y88888P' `8888P88 `88888P8 `88888P8 `88888P8   dP   `88888P' dP       
               .88                                                     
           d8888P                                                      

Загадай число от #{min} до #{max}, а я его угадаю :)
Нажми Enter как будешь готов."
gets

while range > 1 do
  puts "Это число больше чем #{(max + min) / 2}?"
  a = gets.chomp.downcase

  if a.include? "y"
    min = (((max + min) / 2) + 1)
  elsif a.include? "n"
    max = ((max + min) / 2)
  else
    puts "Я понимаю только Yes/No или y/n."
  end

  # print "Debug: #{min}-#{max}\n"
end

if range == 0
  puts "Ты загадал число #{min} :)"
else
  puts "Это число #{min}?"
  a = gets.chomp.downcase

  if a.include? "y"
    puts "Я крут! :)"
  else
    puts "Ты загадал число #{max} :)"
  end
end

def range
  max - min
end