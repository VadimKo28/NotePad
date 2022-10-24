require "date"
class Memo < Post
  def read_from_console
    puts "Новая заметка (всё, что пишите до строчки \"end\"):"

    @text = []
    line = nil

    while line != "end"
      line = STDIN.gets.chomp
      @text << line
    end

    @text.pop
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("_%Y-%m-%d_%H-%M-%S.txt")}"
    @text.unshift(time_string)
  end
end
