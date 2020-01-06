class AddNameToAdvertisement < ActiveRecord::Migration[5.2]
  def change
    add_column :advertisements, :name, :string
  end
end
