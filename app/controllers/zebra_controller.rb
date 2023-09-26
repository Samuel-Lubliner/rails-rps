class ZebraController < ApplicationController
  def giraffe
    @user_move = "rock"
    @random_move = ["rock", "paper", "scissors"].sample
    if @user_move == @random_move
      @outcome = "tied"
    elsif (@random_move == "scissors")
      @outcome = "won"
    else
      @outcome = "lost"
    end

    render({ :template => "game_templates/play_rock"})
  end

  def elephant
    @user_move = "paper"
    @random_move = ["rock", "paper", "scissors"].sample
    if @user_move == @random_move
      @outcome = "tied"
    elsif (@random_move == "rock")
      @outcome = "won"
    else
      @outcome = "lost"
    end
    
    render({ :template => "game_templates/play_paper"})
  end

  def lion
    @user_move = "scissors"
    @random_move = ["rock", "paper", "scissors"].sample
    if @user_move == @random_move
      @outcome = "tied"
    elsif (@random_move == "paper")
      @outcome = "won"
    else
      @outcome = "lost"
    end
    
    render({ :template => "game_templates/play_scissors"})
  end

  def rules
    render({ :template => "game_templates/rules"})
  end
      
end
