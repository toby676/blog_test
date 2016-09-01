require 'rails_helper'
require 'support/factory_girl'

feature 'post creation' do

  scenario 'user can see a new post page' do
    user = create(:user)
    visit '/posts/new'
    expect(page).to have_content ('Create Post')
  end

  scenario 'user can make a new post' do
    user = create(:user)
    visit '/posts/new'
    fill_in('Title', with: 'Hello')
    fill_in('Content', with: 'I am saying hi!')
    click_button('Submit')
    expect(current_path).to eq '/'
    expect(page).to have_content 'Hello'
  end

end
