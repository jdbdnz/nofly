require 'spec_helper'

describe Nofly do

  it "should raise an exception if the nofly event library for that class cannot be found" do
    expect { Nofly.for(Object.new) }.to raise_error
  end

  it "should return a nofly event library if that class can be found" do
    expect( Nofly.for(Foo.new) ).to be_a_kind_of Nofly::EventLibrary
  end
end