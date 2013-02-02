require 'spec_helper'

describe Devise::RegistrationsController do

  include Devise::TestHelpers

  before(:each) do
    @user = FactoryGirl.create(:user)
    sign_in @user
  end

  describe 'GET edit' do

    describe 'success' do

      it 'should be successful' do
        get 'edit'
        response.shoulde be_success
      end
    end
  end
end