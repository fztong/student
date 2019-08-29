class SelectCourse < ApplicationRecord
  belongs_to :course 
  belongs_to :stu
  belongs_to :teacher
end
