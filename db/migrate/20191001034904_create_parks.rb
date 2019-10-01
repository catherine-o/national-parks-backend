class CreateParks < ActiveRecord::Migration[6.0]
  def change
    create_table :parks do |t|
      t.string :name
      t.string :designation
      t.string :states
      t.string :latLong
      t.string :description
      t.string :weatherInfo
      t.string :url

      t.timestamps
    end
  end
end
