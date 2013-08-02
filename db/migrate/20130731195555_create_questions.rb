class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :category_id
      t.integer :topic_id
      t.integer :qno
      t.text :ques
      t.integer :noca
      t.string :ans1
      t.string :ans2
      t.string :ans3
      t.string :cans

      t.timestamps
    end
  end
end
