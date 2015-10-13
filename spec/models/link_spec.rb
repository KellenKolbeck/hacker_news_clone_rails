require 'rails_helper'

describe Link do
  it { should validate_presence_of :title }
  it { should validate_presence_of :link }
  it { should validate_presence_of :posted_by }
  it { should have_many :comments }
end
