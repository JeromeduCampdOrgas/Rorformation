class RenameMetas < ActiveRecord::Migration[6.1]
  def change

    rename_table :metas, :meta

  end
end
