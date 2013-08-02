class DispquesController < ApplicationController
 def index 
  @get_topic_id = params[:id]
  @all_questions = Question.find__by_topic_id(@get_topic_id)

 
 end
end
