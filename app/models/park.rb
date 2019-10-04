class Park < ApplicationRecord
    has_many :bucketlists
    has_many :users, through: :bucketlists
end
