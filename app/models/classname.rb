class Classname < ApplicationRecord
  belongs_to :teacher, optional: :true
  has_many :stus
  has_many :teacher_courses
  has_many :croues_times
  has_many :class_courses
  has_many :teachers, through: :teacher_courses
  has_many :courses, through: :class_courses
  

   

  validates :teacher_id,presence: true, uniqueness:true
  # validates :cname, presence: true, uniqueness: true,
  #                   length: { minimum: 2}
  
end

