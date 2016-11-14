class CreateAutors < ActiveRecord::Migration[5.0]
  def change
    create_table :autors do |t|
      t.string :nombre
      t.string :apellidos

      t.timestamps
    end
  end
end
