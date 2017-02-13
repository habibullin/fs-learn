min = 0
max = 100


print "\n\n\n\n
dP     dP                         dP            dP                     
88     88                         88            88                     
88     88 .d8888b. .d8888b. .d888b88 .d8888b. d8888P .d8888b. 88d888b. 
88     88 88'  `88 88'  `88 88'  `88 88'  `88   88   88'  `88 88'  `88 
Y8.   .8P 88.  .88 88.  .88 88.  .88 88.  .88   88   88.  .88 88       
`Y88888P' `8888P88 `88888P8 `88888P8 `88888P8   dP   `88888P' dP       
               .88                                                     
           d8888P                                                      
           
Загадай число от #{min} до #{max}, а я его угадаю :)
Нажми Enter как будешь готов.\n\n"

gets

while (max - min) > 1 do
	print "Это число больше чем #{(max + min) / 2}?"
	a = gets.chomp
	a.downcase!

	if a.include? "y"
		min = (((max + min) / 2) + 1)
	elsif a.include? "n"
		max = ((max + min) / 2)
	else
		print "Я понимаю только Yes/No или y/n.\n"
	end

	# print "Debug: #{min}-#{max}\n"
end

if max - min == 0
	print "Ты загадал число #{min} :)\n"
else
	print "Это число #{min}?\n"
	a = gets.chomp
	a.downcase!

	if a.include? "y"
		print "Я крут! :)\n"
	else
		print "Ты загадал число #{max} :)\n"
	end
end