class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true, uniqueness: { scope: :name }
  validates :category, presence: true
  validates_inclusion_of :category, in: ['chinese', 'italian', 'japanese', 'french', 'belgian']
end
