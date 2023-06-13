class Board
  attr_accessor :cups, :player1_cups, :player1_store_cup, :player2_cups, :player2_store_cup

  def initialize(name1, name2)
    @cups = Array.new(14){[]}
    @player1 = name1
    @player2 = name2
    @player1_cups = self.cups[0..5]
    place_stones(@player1_cups)
    @player1_store_cup = self.cups[6]
    @player2_cups = self.cups[7..12]
    place_stones(@player2_cups)
    @player2_store_cup = self.cups[13]
  end

  def place_stones(cups)
    # helper method to #initialize every non-store cup with four stones each
    cups.each { |cup| cup.concat([:stone, :stone, :stone, :stone]) }
  end

  def valid_move?(start_pos)
    raise 'Invalid starting cup' unless (0..13).include?(start_pos)
    raise 'Starting cup is empty' if self.cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)

  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    self.player1_cups.empty? || self.player2_cups.empty?
  end

  def winner
  end
end