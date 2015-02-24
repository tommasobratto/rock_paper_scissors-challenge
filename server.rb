require 'sinatra/base'
require_relative './app/lib/player'
require_relative './app/lib/ai'
require_relative './app/lib/game'

class Rock_paper_scissors < Sinatra::Base

  enable :sessions

  cpu = Ai.new
  game = Game.new

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
  
    puts game.inspect
    game.add_players(@player, cpu)
    element_chosen = params[:element]
    @player_choice = @player.choice(element_chosen)
    outcome = game.outcome
    @cpu_choice = cpu.element_selected

    if outcome == true
      @win = "You won!"
      erb :result
    elsif outcome == false
      @lose = "You lost!"
      erb :result
    else 
      @tie = "Draw!"
      erb :result
    end
    # game.draw?
  end

  get '/result' do
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
