class Projet < ActiveRecord::Base
  has_attachment :vignette
  has_attachments :photos, maximum: 10
end
