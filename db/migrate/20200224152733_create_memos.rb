class CreateMemos < ActiveRecord::Migration[5.2]
  def change
    create_table :memos do |t|
      t.text :point1,                             null: false
      t.text :point2
      t.text :point3
      t.text :impression,                         null: false
      t.references :user, foreign_key: true,      null: false  
      t.references :memo, foreign_key: true,      null: false  

      t.timestamps
    end
  end
end