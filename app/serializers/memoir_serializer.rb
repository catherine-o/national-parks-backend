class MemoirSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :park_id, :park
  end