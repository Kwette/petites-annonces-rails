class ChangeTitleToAdvertisement < ActiveRecord::Migration[5.2]
  def change
    remove_column :advertisements, :title
  end
end
