class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_one :user_details
  has_many :posts
  has_many :commisions, primary_key: 'artist_id'       # Received comms
  has_many :requests,   primary_key: 'commissioner_id' # Sent comms
end
