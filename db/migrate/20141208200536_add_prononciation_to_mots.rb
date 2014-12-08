class AddPrononciationToMots < ActiveRecord::Migration
  def change
    add_column :mots, :prononciation, :string
  end
end
