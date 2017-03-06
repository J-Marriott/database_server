require 'spec_helper'

feature 'Data can be saved' do
  scenario 'Data can be saved to yaml file in public/data' do
    visit '/'
    visit '/set?username=joe'
    visit '/store'
    expect(page).to have_content 'Data saved'
  end
end

feature 'Data can be loaded' do
  scenario 'On load, user is displayed value that they set in query string' do
    visit '/'
    visit '/load'
    visit '/get?key=username'
    expect(page).to have_content 'joe'
  end
end
