require File.dirname(__FILE__) + '/spec_helper'

describe "The array [ 1, 2, 3, 4, 5 ]" do
  before :each do
    @a = [ 1, 2, 3, 4, 5 ]
  end

  it "should respond to #variance" do
    @a.should respond_to(:variance)
  end

  it "should have a variance equals to 2" do
    @a.variance.should == 2.0
  end
end
