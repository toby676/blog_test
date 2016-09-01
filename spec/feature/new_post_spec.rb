require 'rails_helper'
require 'support/factory_girl'

feature 'post creation' do



  scenario 'user can see a new post page' do
    user = create(:user)
    visit '/posts/new'
    expect(page).to have_content ('Create Post')
  end

end
