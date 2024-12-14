# app/models/idea.rb
class Search < ApplicationRecord
  scope :search, ->(query) { where("description LIKE ? OR name LIKE ?", "%#{query}%", "%#{query}%") }
end
