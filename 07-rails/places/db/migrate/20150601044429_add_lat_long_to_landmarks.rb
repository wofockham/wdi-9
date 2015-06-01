class AddLatLongToLandmarks < ActiveRecord::Migration
  def change
    add_column :landmarks, :latitude, :float
    add_column :landmarks, :longitude, :float
  end
end
