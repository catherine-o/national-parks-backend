class Park < ApplicationRecord
    has_many :bucketlists
    has_many :users, through: :bucketlists
    has_many :memoirs
    has_many :users, through: :memoirs
end
