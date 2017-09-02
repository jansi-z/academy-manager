class AddTeacherToStudents < ActiveRecord::Migration[5.1]
  def change
    add_reference :students, :teacher, foreign_key: true
  end
end
