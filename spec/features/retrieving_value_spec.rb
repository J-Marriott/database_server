require 'spec_helper'

feature 'Session variable can be loaded' do
  scenario 'On load, user is displayed value that they set in query string' do
    visit '/set?username=joe'
    visit '/get?key=username'
    expect(page).to have_content 'joe'
  end
end
