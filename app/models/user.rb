class User < ApplicationRecord
  validates :name, presence: true, length: {minimum:3,maximum:50}
  validates :email, presence: true, uniqueness: true, length:{minimum:5, maximum:255}
  validates :age, presence: true, :numericality => {greater_than_or_equal_to: 18, less_than: 100}

  before_create do
    self.name = name.downcase
  end
end
