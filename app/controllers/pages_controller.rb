class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :prestations, :philosophie, :test ]

  def home
    @projets = Projet.all.order(rank: :asc)
  end

  def projets
  end

  def prestations
  end

  def philosophie
  end

  def contact
  end

  def test
    @projets = Projet.all.order(rank: :asc)
  end

end
