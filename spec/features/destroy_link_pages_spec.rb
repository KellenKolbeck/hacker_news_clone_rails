require 'rails_helper'

describe "the destroy a link process" do
  it "destroys a new link" do
    link = Link.create(:title => "titles", :posted_by => "usernames", :link => "links")
    visit links_path
    click_on 'delete'
    expect(page).to have_no_content 'titles'
  end
end
