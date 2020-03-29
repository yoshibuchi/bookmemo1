class Book < ApplicationRecord
  belongs_to :user, optional: true
  has_many :comments, dependent: :destroy

  validates :title, presence: true, length: {maximum:20}
  validates :author, presence: true, length: {maximum:10}
  validates :point1, presence: true, length: {maximum:20}
  validates :impression, presence: true, length: {maximum:300}
end
