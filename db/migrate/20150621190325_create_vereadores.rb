class CreateVereadores < ActiveRecord::Migration
  def change
    create_table :vereadores do |t|
      t.string :nome
      t.string :email
      t.string :facebook
      t.string :twitter
      t.text :descricao
      t.boolean :mesa_diretora
      t.string :cargo_mesa

      t.timestamps
    end
  end
end
