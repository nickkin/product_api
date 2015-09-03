class Catalog < ActiveRecord::Base
  has_many :products, dependent: :destroy

  validates :name, presence: true, length: { maximum: 255 }
end
