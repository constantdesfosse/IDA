class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :services, :agence]

  def home
    @projets = Projet.all.order(rank: :asc)
  end

  def projets
  end

  def services
  end

  def agence
  end

  def contact
  end

end
