class Link < Post
  def initialize
    super
    @url = ""
  end

  def load_data(data_hash)
    super(data_hash)
    @url = data_hash["url"].split("\n\r")
  end

  def read_from_console
    puts "Адрес ссылки:"
    @url = STDIN.gets.chomp

    puts "Описание:"
    @text = STDIN.gets.chomp
  end

  def to_db_hash
    super.merge({ url: @url, text: @text })
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("_%d-%m-%Y_%H-%M-%S.txt")}"
    [@url, @text, time_string]
  end
end
