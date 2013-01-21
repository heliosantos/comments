require 'spec_helper'

describe Comment do
  
  it "should have a valid factory" do
    FactoryGirl.build(:comment).should be_valid
  end

  it{FactoryGirl.build(:comment).should respond_to(:text)}
  it{FactoryGirl.build(:comment).should respond_to(:parent)}
end
