class QuestionsController < ApplicationController
  MSGS = {
    great: "Great!",
    silly_question: "Silly question, get dressed and go to work!",
    i_do_not_care: "I don't care, get dressed and go to work!",
    i_can_not_hear: "I can't hear you!"
  }
  
  def ask
  end

  def answer
    @question = params[:question]

    if @question.blank?
      @answer = MSGS[:i_can_not_hear]
    elsif @question.downcase.eql?('i am going to work')
      @answer = MSGS[:great]
    elsif @question.end_with?('?')
      @answer = MSGS[:silly_question]
    else
      @answer = MSGS[:i_do_not_care]
    end
  end
end
