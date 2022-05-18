require "rails_helper"

RSpec.describe Post, type: :model do 
  
  before(:all) do 
    @user = User.find(1)
  end

  it "should not save without a body" do
    post = Post.new(user_id: @user.id)
    expect(post).to_not be_valid
  end

  it "should not save without a valid body" do
    post = Post.new(body: "", user_id: @user.id)
    expect(post).to_not be_valid
  end

  it "should save with a valid body" do
    post = Post.new(body: "Hello, World!", user_id: @user.id)
    expect(post).to be_valid
  end

  it "should fetch associated user correctly" do
    post = Post.new(body: "Hello, World!", user_id: @user.id)
    expect { post.user }.to_not raise_error
  end

end