# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

teacher1 = Teacher.create!( { name: "Arne", age: 44, stress_level: 100, image_url: "teacher1.jpg" })
teacher2 = Teacher.create!( { name: "Karen", age: 37, stress_level: 40, image_url: "teacher2.jpg" })
teacher3 = Teacher.create!( { name: "Jeanet", age: 42, stress_level: 20, image_url: "teacher2.jpg" })

student1 = Student.create!( { name: "Erik", age: 25, stress_factor: 20, image_url: "student1.jpg", teacher: teacher1 })
student2 = Student.create!( { name: "Mary", age: 23, stress_factor: 20, image_url: "student2.jpg", teacher: teacher1 })
student3 = Student.create!( { name: "Hermione", age: 28, stress_factor: 20, image_url: "student2.jpg", teacher: teacher1 })
student4 = Student.create!( { name: "Lillian", age: 23, stress_factor: 20, image_url: "student2.jpg", teacher: teacher1 })
student5 = Student.create!( { name: "Joe", age: 25, stress_factor: 20, image_url: "student1.jpg", teacher: teacher1 })
student6 = Student.create!( { name: "Patrick", age: 27, stress_factor: 20, image_url: "student1.jpg", teacher: teacher2 })
student7 = Student.create!( { name: "Ali", age: 21, stress_factor: 20, image_url: "student1.jpg", teacher: teacher2 })
student8 = Student.create!( { name: "Ginny", age: 23, stress_factor: 20, image_url: "student2.jpg", teacher: teacher3 })

puts "Teachers and students were added"
