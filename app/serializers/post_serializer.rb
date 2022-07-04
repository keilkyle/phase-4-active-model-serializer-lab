class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :tags, :author, :title, :short_content

  belongs_to :author
  has_many :post_tags
  has_many :tags, through: :post_tags


  def short_content
    "#{self.object.content[0..39]}..."
  end


end
