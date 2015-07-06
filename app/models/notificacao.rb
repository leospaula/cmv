class Notificacao < ActiveRecord::Base

	def self.ultima
    all.order('created_at DESC').limit(1)
  end
end
