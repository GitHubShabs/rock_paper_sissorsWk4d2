require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/game'

class RPSGame < Minitest::Test#

  def setup
    @game1 = Game.new("rock", "scissors")
    @game2 = Game.new("paper", "rock")
    @game3 = Game.new("scissors", "paper")
  end

  def test_result___rock_scissors
   assert_equal("rock", @game1.result())
 end

 def test_result___paper_rock
   assert_equal("paper", @game2.result())
 end

 def test_result___scissors_paper
   assert_equal("scissors", @game3.result())
 end

end 




#   def self.check_win(hand1, hand2)
#     hand1 = hand1.downcase
#     hand2 = hand2.downcase
#
#     win = {
#       "rock" => "scissors",
#       "scissors" => "paper",
#       "paper" => "rock"
#     }
#
#     if hand1 == hand2
#       return "It's a Draw!"
#     elsif win[hand1] == hand2
#       return "Player 1 wins with #{hand1}!"
#     elsif win[hand2] == hand1
#       return "Player 2 wins with #{hand2}!"
#     else
#       return "uh oh! Looks like you didn't enter valid inputs!"
#     end
#   end
#
#
# end
