require "spec_helper"

RSpec.describe "Root Path" do
  it "should works" do
    get '/foo'
    expect(last_response.status).to eql 200
    expect(last_response.body).to eql('it works')
  end
end

