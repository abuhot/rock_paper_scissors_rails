class GameController < ApplicationController

  def flexible
    # Rails, behind the scenes, creates a variable for us called 'params';
    #   a Hash that contains all user input:

    # params = {"move"=>"rock"}

    @user_move = params["move"]

    @computer_move = ["rock", "paper", "scissors"].sample

    if @user_move == @computer_move
      @outcome = "tied"
    elsif @user_move == "paper" && @computer_move == "rock"
      @outcome = "won"
    elsif @user_move == "paper" && @computer_move == "scissors"
      @outcome = "lost"
    elsif @user_move == "scissors" && @computer_move == "rock"
      @outcome = "lost"
    elsif @user_move == "scissors" && @computer_move == "paper"
      @outcome = "won"
    elsif @user_move == "rock" && @computer_move == "paper"
      @outcome = "lost"
    elsif @user_move == "rock" && @computer_move == "scissors"
      @outcome = "won"
    end

    # Adding an entry to the Move table for this turn
    m = Move.new
    m.user_move = @user_move
    m.computer_move = @computer_move
    if @outcome == "won"
      m.user_wins = 1
      m.computer_wins = 0
    elsif @outcome == "lost"
      m.user_wins = 0
      m.computer_wins = 1
    else
      m.user_wins = 0
      m.computer_wins = 0
    end

    m.save

    # Retrieving all past moves in order to draw the log
    @all_moves = Move.all

    render("move.html.erb")
  end

  # def rock
  #   @user_move = "rock"

  #   @computer_move = ["rock", "paper", "scissors"].sample

  #   if @computer_move == "rock"
  #     @outcome = "tied"
  #   elsif @computer_move == "paper"
  #     @outcome = "lost"
  #   elsif @computer_move == "scissors"
  #     @outcome = "won"
  #   end

  #   render("move.html.erb")
  # end

  # def paper
  #   @user_move = "paper"

  #   @computer_move = ["rock", "paper", "scissors"].sample

  #   if @computer_move == "rock"
  #     @outcome = "won"
  #   elsif @computer_move == "paper"
  #     @outcome = "tied"
  #   elsif @computer_move == "scissors"
  #     @outcome = "lost"
  #   end

  #   render("move.html.erb")
  # end

  # def scissors
  #   @user_move = "scissors"

  #   @computer_move = ["rock", "paper", "scissors"].sample

  #   if @computer_move == "rock"
  #     @outcome = "lost"
  #   elsif @computer_move == "paper"
  #     @outcome = "won"
  #   elsif @computer_move == "scissors"
  #     @outcome = "tied"
  #   end

  #   render("move.html.erb")
  # end
end
