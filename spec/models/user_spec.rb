require 'spec_helper'

describe User do
  it "is valid with a name, email, password and confirmation" do
    user = User.new(
      name: 'martin',
      email: 'emailnitram@gmail.com',
      password: 'livermore',
      password_confirmation: 'livermore')
    expect(user).to be_valid
  end  
  it "is invalid without a name" do
    expect(User.new(name: nil)).to have(1).errors_on(:name)
  end
  it "is invalid without an email" do
    expect(User.new(email: nil)).to have(1).errors_on(:email)
  end
  
  it "is invalid when password and confirmation do not match" do
    user = User.new(
      name: 'martin',
      email: 'emailnitram@gmail.com',
      password: 'livermore',
      password_confirmation: 'ice')
    expect(user).to_not be_valid
  end
  
end