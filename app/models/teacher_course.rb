class TeacherCourse < ApplicationRecord
  belongs_to :teacher, optional: :true 
  belongs_to :classname, optional: :true
end
