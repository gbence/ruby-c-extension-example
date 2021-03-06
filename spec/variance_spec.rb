require File.dirname(__FILE__) + '/spec_helper'

describe "[ 1, 2, 3, 4, 5 ]" do
  subject { [ 1, 2, 3, 4, 5 ] }
  it { should respond_to(:variance) }
  its(:variance) { should == 2.0 }
end

describe "[ 1, 2.0, 3, 4.0 ]" do
  subject { [ 1, 2.0, 3, 4.0 ] }
  its(:variance) { should == 1.25 }
end

describe "[ 1, 2, 'a' ]" do
  subject { [ 1, 2, 'a' ] }
  it "raises exception on calling :mean" do
    expect{ subject.variance }.to raise_error
  end
end
