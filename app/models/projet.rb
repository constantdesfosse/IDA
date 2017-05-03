class Projet < ActiveRecord::Base

  validates :title, :presence => true
  validates :description, :presence => true
  validates :vignette, :presence => true
  validates :photos, :presence => true
  validates :rank, :presence => true

  extend FriendlyId
  friendly_id :title, :use => :slugged

  has_attachment :vignette
  has_attachments :photos, maximum: 10

   def next
    Projet.where("rank > ?", rank).order("rank ASC").first
  end

  def previous
    Projet.where("rank < ?", rank).order("rank DESC").first
  end

  def last
   Projet.order(rank: :asc).last()
  end

  def first
   Projet.order(rank: :asc).first()
  end

end
