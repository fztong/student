class Course < ApplicationRecord
  has_many :teachers
  has_many :class_courses
  has_many :select_courses
  has_many :classnames, through: :class_courses
  has_many :stus, through: :select_courses
end
