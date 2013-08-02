class Tktest < ActiveRecord::Base
  attr_accessible :category_id, :comptime, :noq, :pass_score, :topic_id
  has_one :topic
end
