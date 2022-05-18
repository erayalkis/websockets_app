class Post < ApplicationRecord
    validates :body, presence: true, length: { minimum: 10, maximum: 250 }
    belongs_to :user
end