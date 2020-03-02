class AddDetailsToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :point1, :text, null: false
    add_column :books, :point2, :text
    add_column :books, :point3, :text
    add_column :books, :impression, :text, null: false
    add_column :books, :user_id, :references, null: false
  end
end
