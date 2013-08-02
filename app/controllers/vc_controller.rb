class VcController < ApplicationController

 def index
  @topic_container = []
  @i = 0
  @test = session[:category].to_i
  @all_tests  = Tktest.where("category_id = ?", @test)
 end
end
