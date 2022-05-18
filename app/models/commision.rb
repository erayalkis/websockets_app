class Commission < ApplicationRecord
    validates :artist_id,       presence: true
    validates :commissioner_id, presence: :true
    
    
    belongs_to :user
end