class Teacher < ApplicationRecord
  has_many :students

  validates :name, presence: true
  validates :name, uniqueness: true

  validates :age, length: { is: 2 }, allow_blank: true

  validates :image_url, length: { maximum: 255}, allow_blank: true
end
