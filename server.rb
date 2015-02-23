require 'sinatra/base'
require_relative './app/lib/player'
require_relative './app/lib/element'
require_relative './app/lib/ai'

class Rock_paper_scissors < Sinatra::Base

  enable :sessions

  rock = Element.rock
  paper = Element.paper
  scissors = Element.scissors
  cpu = Ai.new('CPU')
    
  get '/' do
    erb :index
  end

  post '/' do
    @user_name = params[:name]
    if @user_name.empty?
      redirect '/'
    end
    @player = Player.new(@user_name)
    session[:player] = @player
    puts @player.inspect
    erb :index
  end

  get '/game' do
    erb :game
  end

  post '/game' do 
    session[:game] = game
    @player = session[:player]
    session[:cpu] = cpu
    game = Game.new(@player, cpu)
    cpu.add_element(rock, paper, scissors)
    element_chosen = params[:element]

    game.player_selection(element_chosen)
    game.cpu_selection
    game.battle
    game.outcome
    game.draw?
  end

  get '/result' do
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
