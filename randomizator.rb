def time
  start = Time.now.to_f
  yield
  elapsed = (Time.now.to_f - start).to_s
  puts "Завершено за #{'%.2f' % elapsed} сек"
end

time{
  File.open('out-randomizator.txt', 'w'){ |file|
    for i in 1..300_000
      file.puts rand(100_000..999_999)
    end
  }
}