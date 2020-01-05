class AddDefaultStateToAdvertisement < ActiveRecord::Migration[5.2]
  def change
    change_column :advertisements, :state, :string, default: "waiting"
  end
end
