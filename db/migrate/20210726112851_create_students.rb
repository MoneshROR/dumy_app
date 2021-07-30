class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :firstname
      t.string :lastname
      t.string :fathername
      t.string :address
      t.string :gender

      t.timestamps
    end
  end
end
