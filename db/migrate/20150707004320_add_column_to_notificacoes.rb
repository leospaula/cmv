class AddColumnToNotificacoes < ActiveRecord::Migration
  def change
  	add_column :notificacoes, :publicado, :boolean
  end
end
