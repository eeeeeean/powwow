require 'spec_helper'

describe GroupsController do

  before(:each) do
    @user = FactoryGirl.create(:user)
  end

  describe 'GET new' do

    describe 'success' do

      it ', should work with valid user' do
        get 'new', user_id: @user.id
        response.should be_success
      end

    end

    describe 'failure' do

    end
  end
end