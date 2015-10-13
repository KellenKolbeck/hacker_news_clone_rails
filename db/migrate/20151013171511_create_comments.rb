class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.column :posted_by, :string
      t.column :comment_body, :string
      t.column :upvotes, :integer
      t.column :downvotes, :integer
      t.column :link_id, :integer
      t.column :comment_id, :integer

      t.timestamps
    end
  end
end
