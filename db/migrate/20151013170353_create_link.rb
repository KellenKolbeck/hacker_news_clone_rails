class CreateLink < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.column :link, :string
      t.column :title, :string
      t.column :posted_by, :string
      t.column :upvotes, :integer
      t.column :downvotes, :integer


      t.timestamps
    end
  end
end
