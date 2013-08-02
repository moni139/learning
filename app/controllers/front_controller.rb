class FrontController < ApplicationController
  def index

  end
  def check
  @category = params[:group1]
  @wat_to_do = params[:group2]
  if @wat_to_do == "vc"
   session[:category] = @category
   redirect_to "/vc"
  end
  end

end
