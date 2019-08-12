class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # raise
    @user_question = params[:message]
    # If the message is I am going to work, the coach will answer Great!
    if @user_question == 'I am going to work'
      @coach_answer = "Great!"
    # If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
    elsif @user_question[-1] == "?" # @user_question.split("").last == "?"
      @coach_answer = "Get dressed and go to work!"
    # Otherwise she/he will answer I don't care, get dressed and go to work!
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
end
 # Quand je met une question dans mon formulaire et que je mets un raise dans def answer, si je tape params dans l'irb de ma page web, j'obtiens un hash et si je met params[:message], j'obtiens ma question

