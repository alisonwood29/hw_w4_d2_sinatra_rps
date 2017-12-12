require("sinatra")
require("sinatra/contrib/all")
require("pry-byebug")
require_relative("models/rock_paper_scissor")

# get("/game/:play1/:play2") do
#   # binding.pry
#   return "Rock wins" if params[:play1] == 'rock' && params[:play2] == 'scissors'
#   return "Paper wins" if params[:play1] == 'rock' && params[:play2] == 'paper'
#   return "Scissors wins" if params[:play1] == 'paper' && params[:play2] == 'scissors'
#   return "Paper wins" if params[:play1] == 'paper' && params[:play2] == 'rock'
#   return "Rock wins" if params[:play1] == 'scissors' && params[:play2] == 'rock'
#   return "Scissors wins" if params[:play1] == 'scissors' && params[:play2] == 'paper'
#   return "Try again" if params[:play1] == params[:play2]
# end

get("/game/:play1/:play2") do
  game = Game.new(params["play1"], params["play2"])
  @game_result = game.result()
  erb(:result)
end

get("/") do
  erb(:welcome)
end
