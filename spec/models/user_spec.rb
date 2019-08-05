require 'rails_helper'

RSpec.describe User, type: :model do
  context 'create new user' do
    scenario "should be successful" do
      visit new_user_registration_path
      within('form') do
        fill_in 'Email', with: 'john.doe@example.com'
        fill_in 'Password', with: 'asdfasdf'
        fill_in 'Password confirmation', with: 'asdfasdf'
      end

      click_button 'Sign up'
      expect(page).to have_content('Welcome! You have signed up successfully.')
    end

    scenario "should fail" do

    end
  end

  context "update user" do

  end

  context "destroy user" do

  end
end
