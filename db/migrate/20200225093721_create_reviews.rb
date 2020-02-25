class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :content
      t.integer :owner_rating
      t.integer :animal_rating
      t.references :booking, foreign_key: true

      t.timestamps
    end
  end
end
