class DispquesController < ApplicationController
 def index 
  @get_topic_id = params[:id]
#  @all_questions = Question.find_by_topic_id(@get_topic_id).page(params[:page]).per(4) 
  @all_questions = Question.order("ques").page(params[:page]).per(1) 
 end

 def result
  @ac = params[:page]
  session[:ans] = "pankaj"  
 end
 
 def restest
  @ans = params[:ans]
  session[params[:qid]] = @ans 
 end

 def dispres
  
 end

end
