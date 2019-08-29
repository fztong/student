# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_08_28_013522) do

  create_table "class_courses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "course_id"
    t.bigint "classname_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "week"
    t.integer "croues_time_id"
    t.index ["classname_id"], name: "index_class_courses_on_classname_id"
    t.index ["course_id"], name: "index_class_courses_on_course_id"
  end

  create_table "classnames", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "cname"
    t.text "ctext"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "teacher_id"
    t.integer "course_id"
    t.integer "croues_time_id"
    t.integer "cno"
  end

  create_table "clients", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "username"
    t.string "sex"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "coursename"
    t.integer "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "courseno"
    t.integer "stu_id"
  end

  create_table "croues_times", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "start_time"
    t.string "end_time"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "class_course_id"
    t.integer "classname_id"
    t.string "ctime_id"
  end

  create_table "lists", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "idcard"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "select_courses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "course_id"
    t.bigint "stu_id"
    t.integer "grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "teacher_id"
    t.index ["course_id"], name: "index_select_courses_on_course_id"
    t.index ["stu_id"], name: "index_select_courses_on_stu_id"
  end

  create_table "stus", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "sname"
    t.text "sclass"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "sno", precision: 10
    t.decimal "sage", precision: 10
    t.string "ssex"
    t.string "classname_id"
    t.string "photo"
    t.integer "course_id"
    t.string "address"
    t.string "native_place"
    t.string "birth_date"
    t.string "phone_number"
  end

  create_table "teacher_courses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "teacher_id"
    t.bigint "classname_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["classname_id"], name: "index_teacher_courses_on_classname_id"
    t.index ["teacher_id"], name: "index_teacher_courses_on_teacher_id"
  end

  create_table "teachers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "tname"
    t.string "tage"
    t.string "tclass"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phonenumber"
    t.string "tsex"
    t.integer "course_id"
  end

  create_table "us", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.string "sex"
    t.string "identity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_admin"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
  end

  create_table "user_admins", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "mname"
    t.string "mage"
    t.string "mclass"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "weeks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "week"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "week_day"
  end

end
