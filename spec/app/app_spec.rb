require "spec_helper"

RSpec.describe "Root Path" do
  it "should works" do
    get '/'
    expect(last_response.status).to eql 200
    expect(last_response.body).to eql('hello world')
  end
end
