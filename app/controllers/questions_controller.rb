class QuestionsController < ApplicationController

  def ask
    @ask = params[:question]
  end

  def answer
    @responds = allask(params[:question])
  end

  private

  def allask(question)
    case question
    when "I am going to work"
      "Great!"
    when "what time is it?"
      Time.now
    else
      "Bad question"
    end
  end

  def get_question
    params[:question]
  end
end
