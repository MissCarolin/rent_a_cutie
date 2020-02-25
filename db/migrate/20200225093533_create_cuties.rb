class CreateCuties < ActiveRecord::Migration[5.2]
  def change
    create_table :cuties do |t|
      t.string :name
      t.string :type
      t.string :description
      t.integer :booking_rate
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
