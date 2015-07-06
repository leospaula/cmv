class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
    	t.string :titulo
    	t.string :subtitulo
    	t.string :imagem
    	t.boolean :publicado

      t.timestamps
    end
  end
end
