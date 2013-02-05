require 'spec_helper'

describe MembershipRequest do

  it 'should have a unique combination of attrs' do
    first_mr = MembershipRequest.create(:user_id => 1, :group_id => 1)
    second_mr = MembershipRequest.new(:user_id => 1, :group_id => 1)
    second_mr.should_not be_valid
  end
end