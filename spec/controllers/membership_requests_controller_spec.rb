require 'spec_helper'

describe MembershipRequestsController do

  before(:each) do
    @user = FactoryGirl.create(:user)
    sign_in @user
    attr = FactoryGirl.attributes_for(:group).merge(user_id: @user.id)
    @group = Group.new(attr)
    @group.save
  end

  describe 'GET new' do
    it 'should be a success' do
      get :new, :group_id => @group.id
      response.should be_success
    end
  end
end