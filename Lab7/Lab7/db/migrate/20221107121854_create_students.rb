class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.boolean :is_need_dorm
      t.boolean :is_teacher
      t.integer :experience
      t.string :school
      t.references :language
      t.timestamps
      #has_many :students
    end
  end
end
