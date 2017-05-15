class CoachingController < ApplicationController
  def answer
    @question = params[:query]

    @answer = coach_answer_enhanced(@question)
  end

  def ask

  end


  private

  def coach_answer_enhanced(your_message)
    if your_message.include? "?"
      answer = "Silly question, get dressed and go to work!"
    else
      answer = "I don't care, get dressed and go to work!"
    end

    return answer

  end

end
