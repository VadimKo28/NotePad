require "date"

class Task < Post
  def initialize
    super
    @due_date = Time.now
  end

  def load_data(data_hash)
    super(data_hash)
    @due_date = Date.parse(data_hash["due_date"])
  end

  def read_from_console
    puts "Что нужно сделать?"
    @text = STDIN.gets.chomp

    puts "К какому числу? Укажите дату в формате дд.мм.гггг"
    input = STDIN.gets.chomp
    @due_date = Date.parse(input)
  end

  def to_db_hash
    super.merge({ text: @text, due_date: @due_date.to_s })
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("_%d-%m-%Y_%H-%M-%S.txt")}"
    deadline = "Крайний срок #{@due_date.strftime("_%d-%m-%Y_%H-%M-%S.txt")}"
    [deadline, @text, time_string]
  end
end
