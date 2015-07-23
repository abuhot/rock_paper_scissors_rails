class GameController < ApplicationController
  def rock
    @user_move = "rock"

    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @outcome = "tied"
    elsif @computer_move == "paper"
      @outcome = "lost"
    elsif @computer_move == "scissors"
      @outcome = "won"
    end

    render("move.html.erb")
  end

  def paper
    @user_move = "paper"

    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @outcome = "won"
    elsif @computer_move == "paper"
      @outcome = "tied"
    elsif @computer_move == "scissors"
      @outcome = "lost"
    end

    render("move.html.erb")
  end

  def scissors
    @user_move = "scissors"

    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @outcome = "lost"
    elsif @computer_move == "paper"
      @outcome = "won"
    elsif @computer_move == "scissors"
      @outcome = "tied"
    end

    render("move.html.erb")
  end
end
