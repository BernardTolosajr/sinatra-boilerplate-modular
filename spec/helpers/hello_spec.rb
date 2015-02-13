require "spec_helper"

RSpec.describe "Helpers" do

  subject do
    Class.new {
      include Sinatra::Foo::Helpers
    }
  end

  it "should works" do
    hi = subject.new.hello("world")
    expect(hi).to eq("hello world")
  end
end

