class CreateTransparencias < ActiveRecord::Migration
  def change
    create_table :transparencias do |t|
      t.integer :ano
      t.string :mes
      t.string :tipo
      t.string :arquivo

      t.timestamps
    end
  end
end
