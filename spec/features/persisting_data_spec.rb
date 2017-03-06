require 'spec_helper'

feature 'Session variable can be loaded' do
  scenario 'On load, user is displayed value that they set in query string' do
    visit '/'
    visit '/set?username=joe'
    visit '/set?myjumperis=blue'
    visit '/store'
    expect(page).to have_content 'Data Saved'
    visit '/'
    visit '/get?key=myjumperis'
    expect(page).to have_content 'blue'
  end
end
