class ProjetsController < ApplicationController
  before_action :find_projet, only: [:show, :edit, :update, :destroy]

  def index
    @projets = Projet.all.order(created_at: :desc)
  end

  def new
    @projet = Projet.new
  end

  def create
    @projet = Projet.new projet_params

    if @projet.save
      redirect_to @projet, notice: "Hey Anthony, ton projet à bien été ajouté"
    else
      render 'new', notice: "Oops, ton projet n'a pas été ajouté"
    end
  end

  def show
  end

  def edit
  end

  def update
    if @projet.update projet_params
      redirect_to @projet, notice: "Ton projet à bien été mis à jour"
    else
      render 'edit'
    end
  end

  def destroy
    @projet.destroy
    redirect_to projets_path
  end

  private

  def projet_params
    params.require(:projet).permit(:title, :city, :description)
  end

  def find_projet
    @projet = Projet.find(params[:id])
  end
end
