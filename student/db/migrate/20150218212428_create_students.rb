class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :firstname
      t.string :lastname
      t.date :birthdate
      t.text :description
      t.integer :age

      t.timestamps null: false
    end
  end
end
