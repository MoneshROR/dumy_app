class CreatePrinciples < ActiveRecord::Migration[6.1]
  def change
    create_table :principles do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.text :address

      t.timestamps
    end
  end
end
