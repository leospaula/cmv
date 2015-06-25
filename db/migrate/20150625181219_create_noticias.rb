class CreateNoticias < ActiveRecord::Migration
  def change
    create_table :noticias do |t|
      t.string :titulo
      t.string :introducao
      t.text :conteudo
      t.string :permalink
      t.boolean :publicado
      t.string :imagem
      t.datetime :publicado_em

      t.timestamps
    end
  end
end
