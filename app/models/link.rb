class Link < ActiveRecord::Base
  validates :title, :presence => true
  validates :link, :presence => true
  validates :posted_by, :presence => true
  has_many :comments, :as => :commentable

end
