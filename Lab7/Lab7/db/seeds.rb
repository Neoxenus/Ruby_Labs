# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

l1 = Language.create(language_name: "eng")
l2 = Language.create(language_name: "ger")
l3 = Language.create(language_name: "spa")
s1 = Student.create(name: "Student_1",
                 is_need_dorm: true,
                 is_teacher: true,
                 experience: 4,
                 school: "ped",
                 language: l1)
s2 = Student.create(name: "Student_2",
                 is_need_dorm: false ,
                 is_teacher: true,
                 experience: 2,
                 school: "ped",
                 language: l2)
s3 = Student.create(name: "Student_3",
                 is_need_dorm: true,
                 is_teacher: false,
                 experience: 1,
                 school: "ped",
                 language: l3)
s4 = Student.create(name: "Student_4",
                 is_need_dorm: false,
                 is_teacher: true,
                 experience: 3,
                 school: "ped",
                 language: l1)
s5 = Student.create(name: "Student_5",
                 is_need_dorm: true,
                 is_teacher: false,
                 experience: 5,
                 school: "ped",
                 language: l2)
