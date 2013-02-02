require 'spec_helper'

describe 'user registration' do

  it 'allows users to register if they fill everything out' do

    visit '/users/sign_up'
    fill_in 'user_email',    with: "something@something.com"
    fill_in 'user_password', with: "second8inthesoB"
    fill_in 'user_password_confirmation', with: "second8inthesoB"

    click_button 'Sign up'

    page.should have_content('You have signed up successfully')
  end
end