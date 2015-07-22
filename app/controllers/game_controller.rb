class GameController < ApplicationController
  def rock
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @outcome = "tied"
    elsif @computer_move == "paper"
      @outcome = "lost"
    elsif @computer_move == "scissors"
      @outcome = "won"
    end

    render("rock.html.erb")
  end
end
