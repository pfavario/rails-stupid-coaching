class QuestionsController < ApplicationController
  def answer
    @query = params[:question]
  end

  def ask
    @query = params[:question]
    @response = coach_answer_enhanced(@query)
  end

def coach_answer(your_message)
  # TODO: return coach answer to your_message
  if your_message.downcase == "i am going to work right now!"
    return ""
  elsif !your_message.include?("?")
    return "I don't care, get dressed and go to work!"
  elsif your_message.include?("?")
    return "Silly question, get dressed and go to work!"
  end
end

def coach_answer_enhanced(your_message)
  regular_answer = coach_answer(your_message)
  if your_message.upcase == your_message && regular_answer != ""
    return "I can feel your motivation!" + " " + regular_answer
  end
  return regular_answer
end

end

