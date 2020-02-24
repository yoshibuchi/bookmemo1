class CreateMemos < ActiveRecord::Migration[5.2]
  def change
    create_table :memos do |t|
      t.text :point1,                             null: false
      t.text :point2
      t.text :point3
      t.textarea :impression                    
      t.references :user, foreign_key: true 
      t.references :memo, foreign_key: true 

      t.timestamps
    end
  end
end
