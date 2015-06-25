class Post < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]

  validates_presence_of :title, :slug, :draft, :article

  def should_generate_new_friendly_id?
    title_changed?
  end


end
