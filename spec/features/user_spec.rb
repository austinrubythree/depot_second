require 'rails_helper'

RSpec.feature "Users", type: :feature, js:true do
  context 'create new user' do
    scenario "should be successful" do
      visit '/users/sign_up'
      within('form') do
        fill_in 'Email', with: 'john.doe@example.com'
        fill_in 'Password', with: 'asdfasdf'
        fill_in 'Password confirmation', with: 'asdfasdf'
      end


      click_button 'Sign up'
      expect(page).to have_content('Welcome! You have signed up successfully.')
    end
  end
end
