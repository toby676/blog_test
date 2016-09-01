require 'rails_helper'

feature 'user sees homepage' do

  scenario 'name is on the homepage' do
    visit '/'
    expect(page).to have_content ('Welcome')
  end

end
