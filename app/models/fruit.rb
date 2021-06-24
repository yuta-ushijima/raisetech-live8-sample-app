class Fruit < ApplicationRecord
  include RankedModel
  ranks :row_order
end
