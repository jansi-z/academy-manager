class Student < ApplicationRecord
  belongs_to :teacher

  validates :name, presence: true
  validates :age, inclusion: 18..120, presence: true

  validates :stress_factor, inclusion: 1..50, presence: true

end
