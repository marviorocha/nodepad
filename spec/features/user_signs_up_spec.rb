require 'rails_helper'

RSpec.feature 'User signs up' do
  scenario 'with valid data' do
    visit new_user_registration_path

    fill_in 'First name', with: 'Neymar'
    fill_in 'Last name', with: 'JR'
    fill_in 'Email', with: 'username@example.com'
    fill_in 'Password', with: '12345678'
    fill_in 'Password confirmation', with: '12345678'
    click_button 'Sign up'

    expect(page).to have_text 'You need to sign in or sign up before continuing.'
    expect(page).to have_text 'Log in'
    expect(page).to have_current_path new_user_session_url
  end

  scenario 'with invalid data' do
    visit new_user_registration_path

    click_button 'Sign up'

    expect(page).to have_text "Email can't be blank"
    expect(page).to have_text "Password can't be blank"
    expect(page).to have_no_link 'Sign Out'
  end
end
