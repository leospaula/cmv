class CreateGaleria < ActiveRecord::Migration
  def change
    create_table :galeria do |t|
    	t.string :titulo
    	t.string :imagem
      t.timestamps
    end
  end
end
