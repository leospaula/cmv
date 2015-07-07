class Event < ActiveRecord::Base

	validates :title, :description, presence: true
end
