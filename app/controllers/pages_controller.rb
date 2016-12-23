class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :projets, :prestations, :philosophie, :contact ]

  def home
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
