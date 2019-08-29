class CrouesTime < ApplicationRecord
	belongs_to :classname, optional: :true
	has_many :class_courses
end