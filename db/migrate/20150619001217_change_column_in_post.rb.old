class ChangeColumnInPost < ActiveRecord::Migration
  def change
  	change_table :posts do |t|
  		t.remove :content_html
  		t.rename :content_md, :article
	end
  end
end
