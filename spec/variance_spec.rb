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

describe "The array [ 1, 2.0, 3, 4.0 ]" do
  before :each do
    @a = [ 1, 2.0, 3, 4.0 ]
  end

  it "should have a variance that equals to 2.3125" do
    @a.variance.should == 1.25
  end
end

describe "The array [ 1, 2, 'a' ]" do
  before :each do
    @a = [ 1, 2, 'a' ]
  end

  it "should not have a variance" do
    lambda { @a.variance }.should raise_error
  end
end
