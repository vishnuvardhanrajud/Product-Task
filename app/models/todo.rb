class Todo < ApplicationRecord
	validates :title, presence: true,length: { maximum: 15 }
	validates :description, presence: true,length: { maximum: 255 }
end