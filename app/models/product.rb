class Product < ApplicationRecord
	mount_uploaders :images, CoverImageUploader
end
