class AddColumnsToProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :tenths, :string
    add_column :profiles, :twelveplace, :string
    add_column :profiles, :degree1branch, :string
    add_column :profiles, :degree2branch, :string
  end
end
