class TagSerializer < ActiveModel::Serializer
  attributes :posts, :name, :posts

  has_many :post_tags
  has_many :posts, through: :post_tags
end
