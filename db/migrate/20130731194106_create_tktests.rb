class CreateTktests < ActiveRecord::Migration
  def change
    create_table :tktests do |t|
      t.integer :category_id
      t.integer :topic_id
      t.integer :noq
      t.integer :pass_score
      t.integer :comptime

      t.timestamps
    end
  end
end
