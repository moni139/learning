class Content < ActiveRecord::Base
  attr_accessible :category_id, :description, :topic_id
  belongs_to :topic
end
