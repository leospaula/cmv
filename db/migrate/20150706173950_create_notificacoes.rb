class CreateNotificacoes < ActiveRecord::Migration
  def change
    create_table :notificacoes do |t|
    	t.string :titulo
    	t.text :conteudo

      t.timestamps
    end
  end
end
