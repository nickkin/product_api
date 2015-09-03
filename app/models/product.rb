class Product < ActiveRecord::Base
  belongs_to :catalog

  validates :catalog, :price, presence: true
  validates :name, length: { maximum: 255 }
  validates :price, numericality: { greater_than: 0 }
end
