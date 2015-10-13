require 'rails_helper'

describe "the add a link process" do
  it "adds a new link" do
    visit links_path
    click_on 'Add link'
    fill_in 'Title', :with => 'title'
    fill_in 'Posted by', :with => 'username'
    fill_in 'Link', :with => 'link'
    click_on 'Create Link'
    expect(page).to have_content 'title'
  end

  it "gives error when no title is entered" do
    visit new_link_path
    click_on 'Create Link'
    expect(page).to have_content "Title can't be blank"
  end
end
