require 'spec_helper'

describe "[ 1, 2, 3, 4, 5 ]" do
  subject { [ 1, 2, 3, 4, 5 ] }
  it { should respond_to(:mean) }
  its(:mean) { should == 3.0 }
end

describe "[ 1, 2.0, 3, 4.0 ]" do
  subject { [ 1, 2.0, 3, 4.0 ] }
  its(:mean) { should == 2.5 }
end

describe "[ 1, 2, 'a' ]" do
  subject { [ 1, 2, 'a' ] }
  it "raises exception on calling :mean" do
    expect{ subject.mean }.to raise_error
  end
end
