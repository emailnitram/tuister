require 'spec_helper'

describe Status do
  it "is valid with a name and body" do
    status = Status.new(
      name: 'Martin',
      body: 'Hi Mom')
    expect(status).to be_valid
  end
  
  it "is valid with a body less than 140 characters" do
    expect(Status.new(name: 'martin', body: "hello")).to be_valid
  end
  
  it "is invalid if a body has more than 140 characters" do
    expect(Status.new(body: "a"*141)).to have(1).errors_on(:body)
  end
  
  it "is invalid without a body" do
    expect(Status.new(body: nil)).to have(1).errors_on(:body)
  end
  it "is invalid without a name" do
    expect(Status.new(name: nil)).to have(1).errors_on(:name)
  end
end