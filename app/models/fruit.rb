class Fruit < ApplicationRecord
  include RankedModel
  ranks :row_order

  has_one_attached :image
end
