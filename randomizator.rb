#v1. 1_000_000 numbers 4.26 sec

# def time
#   start = Time.now.to_f
#   yield
#   elapsed = (Time.now.to_f - start).to_s
#   puts "Завершено за #{'%.2f' % elapsed} сек"
# end

# time{
#   File.open('out-randomizator.txt', 'w'){ |file|
#     for i in 1..1_000_000
#       file.puts rand(100_000..999_999)
#     end
#   }
# }


#v2. 1_000_000 numbers 3.51 sec
start = Time.now.to_f

my_array = []

for i in 1..1_000_000
  my_array << rand(100_000..999_999)
end

File.open('out-randomizator.txt', 'w'){ |file|
    file.puts my_array
}

elapsed = (Time.now.to_f - start).to_s
puts "Завершено за #{'%.2f' % elapsed} сек"