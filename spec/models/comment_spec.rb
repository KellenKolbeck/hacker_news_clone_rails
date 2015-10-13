require 'rails_helper'

describe Comment do
  it { should validate_presence_of :comment_body }
  it { should validate_presence_of :posted_by }
  it { should belong_to :commentable }
  it { should have_many :comments }
end
