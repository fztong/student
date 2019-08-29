class ClassnamesController < ApplicationController
  before_action :authenticate_user!  # 這個是 devise 提供的方法，先檢查必須登入
  before_action :authenticate_admin # 再檢查是否有權限
  before_action :find_me, only: [:show, :edit, :update, :update_tname,
    :update_tcname, :update_sname, :destroy, :update_clazz, :update_tclazz,
    :update_tcourse, :update_student, :destroy_tname, :update_teas, :update_teacher,
    :update_stus, :update_stud, :update_cs, :update_course, :update_ct, :update_ctime]

  def index

    # @classnames = Classname.all
    # @classnames = Classname.all.paginate(page:params[:page],per_page:10)
    # @classnames = Classname.page(params[:page]).per(10)
    params[:q]||={}   
    @q = Classname.ransack(params[:q])
    @classnames = @q.result.page(params[:page])
  end   

  def show
    @class_courses = @classname.class_courses.includes(:croues_time, :course)
  end

  def new
    @classname = Classname.new
  end

  def edit

  end

  def create
    @classname = Classname.new(classname_params)
    if @classname.save
      redirect_to @classname
    else
      render 'new'
    end
  end

  def update
    if @classname.update(classname_params)
      redirect_to @classname
    else 
      render 'edit'
    end
  end

  #更新学生班级页面
  def update_cname 
    @stu = Stu.find_by(id: params[:stu_id]) 
    @stu = Stu.new if @stu.blank? 
  end

  #更新学生班级
  def update_clazz
    @stu = Stu.find_by(id: params[:stu_id])
    @stu.classname_id = params[:classname_id]
    @stu.save
    redirect_to classnames_path
    # @classname需要定义
  end

  #更改班主任页面
  def update_tname 

  end

  #更改班主任
  def update_tclazz
    @classname.teacher_id = params[:teacher_id]
    @classname.save
    redirect_to @classname
  end

  #新添任课教师页面
  def update_tcname

  end

  #新添任课教师
  def update_tcourse
    @classname.teachers << Teacher.find_by(id:  params[:teacher_id])
    #向数组里添加数据 自动保存
    redirect_to @classname
  end

  #新添班级学生页面
  def update_sname

  end

  #新添班级学生
  def update_student
    @classname.stus << Stu.find_by(id:  params[:stu_id])
    #向数组里添加数据 自动保存
    redirect_to @classname
  end
  # 批量添加任课教师
  def update_teas
    @teachers = Teacher.all
  end

  def update_teacher 
    @classname.teachers =  ( @classname.teachers + 
      Teacher.where(id: params[:teachers])).uniq - (@classname.teachers - 
      Teacher.where(id: params[:teachers]))
     redirect_to @classname
  end

 # 批量添加学生
  def update_stus
    @stus = Stu.all
  end

  def update_stud 
    @classname.stus =  ( @classname.stus + 
      Stu.where(id: params[:stus])).uniq - (@classname.stus - 
      Stu.where(id: params[:stus]))
     redirect_to @classname
  end
# 添加上课时间
  def update_ct
     @croues_time = CrouesTime.all
  end

  def update_ctime
     @classname.croues_times =  ( @classname.croues_times + 
      CrouesTime.where(id: params[:croues_times])).uniq - (@classname.croues_times - 
      CrouesTime.where(id: params[:croues_times]))
     redirect_to @classname
  end
# 修改课程表
  def update_cs

  end

  def update_course
    @class_course = ClassCourse.new()
    @class_course.croues_time_id = CrouesTime.find_by(id: params[:croues_time_id]).id
    @class_course.week = params[:week_id]    
    @class_course.course_id = Course.find_by(id: params[:course_id]).id
    @class_course.classname_id = @classname.id
    @class_course.save
    # @classname.class_courses << @class_course
    redirect_to @classname
  end

  def destroy 
    @classname.destroy
    redirect_to classnames_path
  end

  def destroy_tname
    @teacher =Teacher.find_by(id:  params[:teacher_id])
    #传递班级id任课教师id
    @classname.teachers.delete(@teacher)
    #删除数组某个数据
    redirect_to @classname
  end

private
  def classname_params
    params.require(:classname).permit(:cname,
      :ctext,:teacher_id, :cno) 
  end

  def find_me
    @classname = Classname.find_by(id: params[:id])
  end

end