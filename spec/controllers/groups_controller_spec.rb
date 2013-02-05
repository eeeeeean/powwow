require 'spec_helper'

describe GroupsController do

  render_views

  before(:each) do
    @user = FactoryGirl.create(:user)
    sign_in @user
    @attr = FactoryGirl.attributes_for(:group).merge(user_id: @user.id)
  end

  describe 'GET index' do

    describe 'success' do

      it 'should be a success' do
        get :index
        response.should be_success
      end

      it 'should have the right title' do
        get :index
        response.should have_selector('title', content: 'All groups')
      end
    end
  end

  describe 'GET new' do

    describe 'success' do

      it ', should work with valid user' do
        get 'new'
        response.should be_success
      end

      it 'should render the groups#new' do
        get :new
        response.should have_selector('title', content: "New group")
      end

    end

    describe 'failure' do

    end
  end

  describe 'POST create' do

    describe 'success' do

      it 'should be a success' do
        post :create, group: @attr
        response.should be_redirect
      end

      it 'should change group count' do
        lambda do
          post :create, group: @attr
        end.should change(Group, :count)
      end

      it 'should change membership count' do
        lambda do
          post :create, group: @attr
        end.should change(Membership, :count).by(1)
      end
    end
  end
end