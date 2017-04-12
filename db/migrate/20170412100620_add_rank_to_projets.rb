class AddRankToProjets < ActiveRecord::Migration
  def change
    add_column :projets, :rank, :integer
  end
end
