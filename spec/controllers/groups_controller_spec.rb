require 'spec_helper'

describe GroupsController do

  before(:each) do
    @user = FactoryGirl.create(:user)
    sign_in @user
    @attr = FactoryGirl.attributes_for(:group)
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

  describe 'POST create' do

    describe 'success' do

      it 'should be a success' do
        post :create, user_id: @user.id, attr: @attr
        response.should be_redirect
      end
    end
  end
end