require 'rails_helper'

RSpec.feature 'User resets a password' do
  scenario 'user enters a valid email' do
    user = create :user

    visit new_user_password_path

    fill_in 'Email', with: user.email
    click_button 'Send me now'

    expect(page).to have_text 'You will receive an email with instructions'
    expect(page).to have_current_path new_user_session_path
  end
end
