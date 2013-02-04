require 'spec_helper'

describe GroupsController do

  render_views

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

      it 'should not find new with wrong user' do
        some_user = FactoryGirl.create(:user)
        get 'new', user_id: some_user.id
        response.should be_redirect
      end

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