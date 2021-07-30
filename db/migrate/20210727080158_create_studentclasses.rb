class CreateStudentclasses < ActiveRecord::Migration[6.1]
  def change
    create_table :studentclasses do |t|
      t.string :name
      #t.integer :student_id

      t.timestamps
    end
  end
end
