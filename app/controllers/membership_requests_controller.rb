class MembershipRequestsController < ApplicationController



  def new
    @join = MembershipRequest.new
  end

  def create
    @join = MembershipRequest.new(params[:membership_request])
    if @join.save
      flash[:notice] = "Request saved"
      render 'new'
    else
      render 'new'
    end
  end
end