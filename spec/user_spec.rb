require 'spec_helper'

describe "User" do
  it "should raise error on mass assignment" do
    lambda{User.create!(:username=>"Randy", 
                        :pw=>"123", 
                        :email=>"rab@uslex.net")}.should raise_error ActiveModel::MassAssignmentSecurity::Error
  end
  it "should create a user" do
    u = User.new
    u.username = "Randy"
    u.pw = "123"
    u.email = "rab@uslex.net"
    u.save
    user = User.find_by_username("Randy")
    user.username.should == "Randy"
  end
  
  it "should raise validation error if password is blank" do
    u = User.new
    u.username = "Randy"
    u.pw = ""
    u.email = "rab@uslex.net"
    u.save
    # these next two lines accomplish the same thing
    u.valid?.should be_false
    u.errors.should have_key(:pw)
  end
end