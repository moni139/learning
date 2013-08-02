class Question < ActiveRecord::Base
  attr_accessible :ans1, :ans2, :ans3, :cans, :category_id, :noca, :qno, :ques, :topic_id
  belongs_to :topic
end
