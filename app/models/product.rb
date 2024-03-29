class Product < ApplicationRecord
	self.table_name = "products"
	# has_and_belongs_to_many :orders
	has_one_attached :image
    has_one_attached :csv_file
    has_and_belongs_to_many :address
    has_and_belongs_to_many :carts
    has_many :quantities
    has_and_belongs_to_many :wishlists

    # validate :image_format

    # private

    # def image_format
    #  return unless image.attached?

    #  unless image.content_type.in?(['image/jpeg', 'image/png'])
    #      errors.add(:image, 'must be a valid image format (jpg or png)')
    #  end
    # end

#     validate :file_format

#     private

#     def file_format
#       return unless image.attached?

#       allowed_content_types = ['image/jpeg', 'image/png', 'application/pdf', 'text/csv']

#       unless image.content_type.in?(allowed_content_types)
#         errors.add(:image, 'must be a valid file format (JPEG, PNG, PDF, or CSV)')
#     end
# end

end
