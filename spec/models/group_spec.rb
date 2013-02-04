require 'spec_helper'

describe Group do

  before(:each) do
    @attr = { :name => 'foo' }
  end

  it 'should have a name' do
    no_name_group = Group.new(@attr.merge(name: ""))
    no_name_group.should_not be_valid
  end
end