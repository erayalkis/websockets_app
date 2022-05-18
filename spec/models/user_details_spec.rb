require "rails_helper"

RSpec.describe UserDetails, type: :model do

  it "should not save without necessary info" do
    details = UserDetails.new
    expect(details).to_not be_valid
  end

  it "should save with missing optional info" do
    details = UserDetails.new(user_id: 1, user_pronouns: "she/her", )
    expect(details).to be_valid
  end

  it "should save with some optional info included" do
    details = UserDetails.new(user_id: 1, user_pronouns: "he/they", user_twitter_url: 'twitter.com/twitter')
    expect(details).to be_valid
  end

end