# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

teacher1 = Teacher.create!( { name: "Joop", age: 43, stress_level: 0, image_url: "teacher1.jpg" })
teacher2 = Teacher.create!( { name: "Karen", age: 37, stress_level: 0, image_url: "teacher2.jpg" })

student1 = Student.create!( { name: "Erik", age: 25, stress_factor: 0, image_url: "student1.jpg", teacher: teacher1 })
student2 = Student.create!( { name: "Mary", age: 23, stress_factor: 0, image_url: "student2.jpg", teacher: teacher2 })

puts "Teachers and students were added"
