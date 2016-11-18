class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :nombre
      t.string :apellidos

      t.timestamps null: false
    end
  end
end
