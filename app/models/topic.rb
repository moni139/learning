class Topic < ActiveRecord::Base
  attr_accessible :category_id, :name, :tktest_id
  belongs_to :category
  has_many :contents
  belongs_to :tktest
  has_many :questions
end
