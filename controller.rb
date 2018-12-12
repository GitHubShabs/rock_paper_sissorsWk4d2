require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/game')
also_reload('./models/*')

# get '/' do
#   erb(:home)
# end
# 
# get '/about_us' do
#   erb(:about_us)
# end
#
#
# get '/add/:num1/:num2' do
#   calculator = Calculator.new( params[:num1].to_i, params[:num2].to_i )
#   @calculation = calculator.add()
#   erb( :result )
# end
#
class RPSGame

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def self.check_win(hand1, hand2)
    @hand1 = hand1.downcase
    @hand2 = hand2.downcase

    win = {
      "rock" => "scissors",
      "scissors" => "paper",
      "paper" => "rock"
    }

    if hand1 == hand2
      return "It's a Draw!"
    elsif win[hand1] == hand2
      return "Player 1 wins with #{hand1}!"
    elsif win[hand2] == hand1
      return "Player 2 wins with #{hand2}!"
    else
      return "uh oh! Looks like you didn't enter valid inputs!"
    end
  end

end
