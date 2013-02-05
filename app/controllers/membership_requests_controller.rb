class MembershipRequestsController < ApplicationController



  def new
    @join = MembershipRequest.new
  end
end