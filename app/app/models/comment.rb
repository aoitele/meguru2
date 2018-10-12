class Comment < ApplicationRecord
  has_one_attached :image
  has_one_attached :message
end
