class Stu < ApplicationRecord
  belongs_to :classname, optional: :true
  has_many :select_courses
  has_many :courses, through: :select_courses

  validates :sname, presence: true,uniqueness: true,
                    length: {minimum: 2 }

 
  validates :sno, presence: true, uniqueness: true,
             numericality: true,      
                    length: {  is: 10}

  validates :sage, numericality:  { only_integer: true }, presence: true,
                    length: {  in: 1..2}


  attr_accessor  :photo

  mount_uploader :photo, AvatarUploader

  def self.create_stu(stu)
    url = "http://192.168.3.85:3000/stus/create_student"
    params = {stu: {sno: "1212121212", sname: "ssssde", sage: stu.sage, ssex: stu.ssex}}
    a = RestClient.post(url, params)
  end
  
end
