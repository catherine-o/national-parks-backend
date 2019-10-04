class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :password
  has_many :bucketlists
  # has_many :parks, through: :bucketlists
  has_many :memoirs
  has_many :parks, through: [:memoirs, :bucketlists]
end
