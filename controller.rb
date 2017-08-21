require "sinatra"
require "sinatra/contrib/all" if development?
require_relative "models/rps_game"
also_reload "models/*"

get "/" do
  erb(:home)
end

get "/:hand1/:hand2" do
  hand1 = params[:hand1].to_sym
  hand2 = params[:hand2].to_sym
  result = RPSGame.new.play(hand1, hand2)
  @message =
    case result
    when 0
      "Draw! Everybody loses :("
    when 1
      "Player 1 wins with #{params[:hand1]}!"
    when 2
      "Player 2 wins with #{params[:hand2]}!"
    else
      "Invalid hands given!"
    end
  erb(:result)
end
