class Teacher < ApplicationRecord
  has_one :classname
  has_many :teacher_courses
  has_many :classnames, through: :teacher_courses
  belongs_to :course, optional: :true
  has_many :select_courses
  #belongs_to :user_admin
  # validates :classname_id, presence: true,uniqueness:true
  
  validates :tname, presence: true,uniqueness: true,
                     length: { minimum: 2}               

  validates :phonenumber, presence: true, uniqueness: true,
               numericality: true,
                    length: {  is: 11}
    
  validates :tage, numericality: true, presence: true,
                    length: {  in: 1..2}
end