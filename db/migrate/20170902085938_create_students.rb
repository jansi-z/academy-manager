class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :age
      t.integer :stress_factor
      t.string :image_url

      t.timestamps
    end
  end
end
