require 'rails_helper'

describe "the edit a link process" do
  it "edit a new link" do
    link = Link.create(:title => "titles", :posted_by => "usernames", :link => "links")
    visit links_path(link)
    click_on 'edit'
    fill_in 'Title', :with => 'title'
    fill_in 'Posted by', :with => 'username'
    fill_in 'Link', :with => 'link'
    click_on 'Update Link'
    expect(page).to have_content 'title'
  end

  it "gives error when no title is entered" do
    link = Link.create(:title => "titles", :posted_by => "usernames", :link => "links")
    visit edit_link_path(link)
    fill_in 'Title', :with => ""
    click_on 'Update Link'
    expect(page).to have_content "Title can't be blank"
  end
end
