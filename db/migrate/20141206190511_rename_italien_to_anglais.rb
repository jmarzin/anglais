class RenameItalienToAnglais < ActiveRecord::Migration
  def change
    rename_column :traductions, :italien, :anglais
    rename_column :formes, :italien, :anglais
    rename_column :mots, :italien, :anglais
  end
end
