class AdminUser < ActiveRecord::Base
  has_many :posts
  has_many :chora_items
end
