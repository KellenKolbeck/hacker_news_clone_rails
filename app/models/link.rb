class Link < ActiveRecord::Base
  validates :title, :presence => true
  validates :link, :presence => true
  validates :posted_by, :presence => true
  has_many :comments, :as => :commentable
  scope :ranking, -> { select("id, title, posted_by, link, upvotes, downvotes, created_at,
   hot_score(upvotes, downvotes, created_at) as hot_score").
   order("hot_score desc") }
end
