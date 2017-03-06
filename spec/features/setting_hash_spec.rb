require 'spec_helper'

feature 'Session variable is set' do
  scenario 'On load, user is displayed variable that they set in query string' do
    visit '/set?username=joe'
    expect(page).to have_content '{"username"=>"joe"}'
  end
end
