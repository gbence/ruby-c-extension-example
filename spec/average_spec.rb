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

describe "The array [ 1, 2.0, 3, 4.0 ]" do
  before :each do
    @a = [ 1, 2.0, 3, 4.0 ]
  end

  it "should have an average that equals to 2.5" do
    @a.average.should == 2.5
  end
end

describe "The array [ 1, 2, 'a' ]" do
  before :each do
    @a = [ 1, 2, 'a' ]
  end

  it "should not have an average" do
    lambda { @a.average }.should raise_error
  end
end
