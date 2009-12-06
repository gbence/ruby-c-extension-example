require File.dirname(__FILE__) + '/spec_helper'

describe "The array [ 1, 2, 3, 4, 5 ]" do
  before :each do
    @a = [ 1, 2, 3, 4, 5 ]
  end

  it "should respond to #average" do
    @a.should respond_to(:average)
  end

  it "should have an average that equals to 3" do
    @a.average.should == 3.0
  end
end
