# app/models/idea.rb
class Search < ApplicationRecord
  scope :search, ->(query) { where("description LIKE ? OR name LIKE ? OR user_name LIKE ?", "%#{query}%", "%#{query}%", "%#{query}%") }
end
