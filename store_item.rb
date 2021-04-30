require "./bath_bombs.rb"
require "./candles.rb"
require "./self_care_items.rb"

# buttercream = Candles.new({:color => "yellow", :price => 9.5, :size => "medium"})
# puts buttercream.color
# puts buttercream.price
# puts buttercream.size
# buttercream.size = "large"
# puts buttercream.size

bath = Bath_Bombs.new
candle = Candles.new

bath.scent
candle.size
