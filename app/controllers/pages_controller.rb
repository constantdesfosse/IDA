class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :prestations, :agence]

  def home
    @projets = Projet.all.order(rank: :asc)
  end

  def projets
  end

  def prestations
  end

  def agence
  end

  def contact
  end

end
