class CreateLegislacoes < ActiveRecord::Migration
  def change
    create_table :legislacoes do |t|
      t.integer :numero
      t.integer :ano
      t.text :ementa
      t.string :classificacao
      t.string :situacao
      t.string :tipo
      t.string :autoria
      t.string :arquivo

      t.timestamps
    end
  end
end
