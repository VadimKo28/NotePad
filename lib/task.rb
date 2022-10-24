require "date"
class Task < Post
  def initialize
    super
    @due_date = Time.now
  end

  def read_from_console
    puts "Что нужно сделать?"
    @text = STDIN.gets.chomp

    puts "К какому числу? Укажите дату в формате дд.мм.гггг"
    input = STDIN.gets.chomp 
    @due_date = Date.parse(input)
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("_%Y-%m-%d_%H-%M-%S.txt")}"
    deadline = "Крайний срок #{@due_date}"
    [deadline, @text, time_string]
  end
end