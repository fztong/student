class ClassCourse < ApplicationRecord
  belongs_to :course,  optional: :true
  belongs_to :classname, optional: :true
  belongs_to :croues_time, optional: :true
end


