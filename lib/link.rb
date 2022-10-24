require "date"
class Link < Post
  def initialize
    super
    @url = ""
  end

  def read_from_console 
    puts "Адрес ссылки:"
    @url = STDIN.gets.chomp 

    puts "Описание:"
    @text = STDIN.gets.chomp
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("_%Y-%m-%d_%H-%M-%S.txt")}"
    [@url, @text, time_string]
  end 
end
