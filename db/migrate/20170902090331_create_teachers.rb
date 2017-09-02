class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :name
      t.integer :age
      t.integer :stress_level
      t.string :image_url

      t.timestamps
    end
  end
end
