class Idea < ApplicationRecord
  has_many :comments
  belongs_to :user
  mount_uploader :picture, PictureUploader
  scope :search, ->(query) { where("description LIKE ? OR name LIKE ?", "%#{query}%", "%#{query}%") }
end
def self.search(search)
  if search != ""
    Idea.where(['description LIKE(?) OR name LIKE(?)', "%#{search}%", "%#{search}%"])
  else
    Idea.includes(:comments).order('created_at DESC')
  end
end