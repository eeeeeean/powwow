require 'spec_helper'

describe UsersController do

  include Devise::TestHelpers

  before(:each) do
    @user = FactoryGirl.create(:user)
    sign_in @user
  end

  describe 'GET edit' do

    describe 'success' do

      it 'should be a success' do
        get 'edit'
        response.should be_success
      end
    end
  end
end