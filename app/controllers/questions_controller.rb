class QuestionsController < ApplicationController

  def ask
  end

  def answer
    your_message = params[:question]
    @question = params[:question]

    if your_message.include? "?"
      @answer = "Silly question, get dressed and go to work!"
    elsif your_message.include? "I am going to work"
      @answer = "Great"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
