class Post < ActiveRecord::Base
  has_many :tags, through: :post_tags
  has_many :post_tags

  validates :title, presence: true
  validates :content, presence: true

  # Remember to create a migration!

  def tags=(tags)
    tag_array = tags.split(",")
    tag_array.each do |word|
     self.tags << Tag.find_or_create_by_name(word.strip.downcase)
    end
  end

end
