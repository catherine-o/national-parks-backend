class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    has_many :bucketlists
    has_many :parks, through: :bucketlists
end
