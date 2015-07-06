class AdminUser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable


	def self.roles
  	tipos = ['Administrador','Comunicacao','Contabilidade', 'Legislativo']
  end

end
