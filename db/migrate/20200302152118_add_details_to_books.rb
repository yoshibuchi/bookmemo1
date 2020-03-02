class AddDetailsToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :point1, :text
    add_column :books, :point2, :text
    add_column :books, :point3, :text
    add_column :books, :impression, :text
    add_column :books, :user_id, :reference
  end
end
