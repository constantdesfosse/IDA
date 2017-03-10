class AddSlugToProjets < ActiveRecord::Migration
  def change
    add_column :projets, :slug, :string
    add_index :projets, :slug, unique: true
  end
end
