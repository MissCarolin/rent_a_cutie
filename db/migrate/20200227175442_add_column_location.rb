class AddColumnLocation < ActiveRecord::Migration[5.2]
  def change
    add_column :cuties, :location, :string
  end
end
