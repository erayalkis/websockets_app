require "rails_helper"

RSpec.describe Commission, type: :model do 

  before(:all) do 
    @commissioner = User.find(1)
    @artist = User.find(2)
    @commission = Commission.new(commissioner_id: @commissioner.id, artist_id: @artist.id)
  end

  it "should create users correctly" do
    expect(@commissioner).to be_valid
  end

  it "should not save without a valid user id" do
    commission = Commission.new(artist_id: @artist.id)
    expect(commission).to_not be_valid  
  end

  it "should not save without a valid artist id" do
    commission = Commission.new(commissioner_id: @commissioner.id)
    expect(commission).to_not be_valid  
  end

  it "should save with the correct inputs" do
    expect(@commission).to be_valid
  end

  it "should fetch associated artist correctly" do
    expect { @commission.artist }.to_not raise_error
  end

  it "should fetch associated commissioner correctly" do
    expect { @commission.commissioner }.to_not raise_error
  end
end