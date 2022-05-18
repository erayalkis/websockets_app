class Commission < ApplicationRecord
    validates :artist_id,       presence: true
    validates :commissioner_id, presence: :true
    
    
    belongs_to :commissioner, class_name: 'User', foreign_key: 'commissioner_id'
    belongs_to :artist, class_name: 'User', foreign_key: 'artist_id'
end