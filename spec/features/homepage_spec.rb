require 'spec_helper.rb'

feature 'Webapp loads' do
  scenario 'On load, user is greeted with string' do
    visit '/'
    expect(page).to have_content 'Welcome to the app'
  end
end
