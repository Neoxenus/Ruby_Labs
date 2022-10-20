require './university'
students = [Student.new("a", true, 3, true, "ped", :eng ),
            Student.new("b", false, 0, false,"sc2", :ger ),
            Student.new("c", true, 3,false, "ped", :ger ),
            Student.new("d", true, 1, true, "sc2", :eng ),
            Student.new("e", false, 5, false, "sc3", :eng ),
            Student.new("f", true, 4,true, "ped", :ger )
]
university = University.new(students)
p university.number_need_dorm
puts "---------------------------------"

university.list_with_teacher_experience.each { |x| puts x }
puts "---------------------------------"
university.list_from_ped.each { |x| puts x }
puts "---------------------------------"

university.language_groups.each do |key, value|
  puts key
  value.each{|st| puts st}
end