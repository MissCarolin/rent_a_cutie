class AddCoordinatesToCutie < ActiveRecord::Migration[5.2]
  def change
    add_column :cuties, :latitude, :float
    add_column :cuties, :longitude, :float
  end
end
