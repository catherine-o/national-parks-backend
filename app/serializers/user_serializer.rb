class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :password
  has_many :bucketlists
  has_many :parks, through: :bucketlists
end
