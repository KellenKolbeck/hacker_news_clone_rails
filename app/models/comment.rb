class Comment < ActiveRecord::Base
  validates :comment_body, :presence => true
  validates :posted_by, :presence => true
  belongs_to :commentable, :polymorphic => true
  has_many :comments, :as => :commentable
end
