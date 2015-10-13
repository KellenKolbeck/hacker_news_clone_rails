class DropColumns < ActiveRecord::Migration
  def change
    add_column :comments, :commentable_id, :integer
    add_column :comments, :commentable_type, :string
    remove_column :comments, :link_id, :integer
    remove_column :comments, :comment_id, :integer

    add_index :comments, :commentable_id
  end
end
