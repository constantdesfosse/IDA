class Projet < ActiveRecord::Base

  validates :title, :presence => true
  validates :description, :presence => true
  validates :vignette, :presence => true
  validates :photos, :presence => true

  extend FriendlyId
  friendly_id :title, :use => :slugged

  has_attachment :vignette
  has_attachments :photos, maximum: 10

  def next
    Projet.where(["created_at < ?", created_at]).last
  end

  def previous
    Projet.where(["created_at > ?", created_at]).last
  end

end
