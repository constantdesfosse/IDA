class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :prestations, :philosophie ]

  def home
    @projets = Projet.all.order(created_at: :desc)
  end

  def projets
  end

  def prestations
  end

  def philosophie
  end

  def contact
  end

end
