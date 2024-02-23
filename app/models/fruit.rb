class Fruit < ApplicationRecord
  include RankedModel
  ranks :row_order

  has_one_attached :image
  has_one_attached :image2, service: :server_side_encrypted_s3
  has_one_attached :image3, service: :client_side_encrypted_s3
end
