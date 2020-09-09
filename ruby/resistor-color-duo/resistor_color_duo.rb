# Colors are mapped to numbers as follows:
#
# Black  -> 0 | Brown  -> 1 | Red   -> 2 |
# Orange -> 3 | Yellow -> 4 | Green -> 5 |
# Blue   -> 6 | Violet -> 7 | Grey  -> 8 |
# White  -> 9 |
#
class ResistorColorDuo

  # COLORS = {
  #   "black"  => "0",
  #   "brown"  => "1",
  #   "red"    => "2",
  #   "orange" => "3",
  #   "yellow" => "4",
  #   "green"  => "5",
  #   "blue"   => "6",
  #   "violet" => '7',
  #   "grey"   => '8',
  #   "white"  => "9"
  # }.freeze

  # def self.value bands
  #   "#{COLORS[bands[0]]}#{COLORS[bands[1]]}".to_i
  # end

  def self.value (colors)
    sum = 0
    for n in [10,1]
      i = 0 if n == 10
      i = 1 if n == 1
      case colors[i]
        when "black"  # 0
          sum
        when "brown"
          sum = sum + 1*n
        when "red"
          sum = sum + 2*n
        when "orange"
          sum = sum + 3*n
        when "yellow"
          sum = sum + 4*n
        when "green"
          sum = sum + 5*n
        when "blue"
          sum = sum + 6*n
        when "violet"
          sum = sum + 7*n
        when "grey"
          sum = sum + 8*n
        when "white"
          sum = sum + 9*n
        end
    end
    sum.to_i
  end
end
