require "./self_care_items.rb"

class Candles
  include Self_Care

  def size
    puts "medium"
  end
  # def size=(new_size)
  #   @size = new_size
  # end
end