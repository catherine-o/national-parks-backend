class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    has_many :bucketlists
    has_many :parks, through: :bucketlists
    has_many :memoirs
    has_many :parks, through: :memoirs
end
