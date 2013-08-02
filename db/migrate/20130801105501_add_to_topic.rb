class AddToTopic < ActiveRecord::Migration
  def up
  add_column :topics, :tktest_id, :integer
  end

  def down
  end
end
