require_relative "lib/post"
require_relative "lib/link"
require_relative "lib/memo"
require_relative "lib/task"


puts "Привет, что хотите записать?"

choises = Post.post_types

choise = -1 

until choise >= 0 && choise < choise.size 
  choises.each_with_index do |type, index|
    puts "#{index}. #{type}"
  end 
  
  choise = gets.to_i
end

entry = Post.create(choise)

entry.read_from_console

entry.save 

puts "Запись сохранена"