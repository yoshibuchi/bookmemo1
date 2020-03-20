class Book < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destoroy
end
