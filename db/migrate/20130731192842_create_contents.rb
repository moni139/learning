class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.text :description
      t.integer :category_id
      t.integer :topic_id

      t.timestamps
    end
  end
end
