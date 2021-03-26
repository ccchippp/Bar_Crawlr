class CreateBars < ActiveRecord::Migration[6.1]
  def change
    create_table :bars do |t|
      t.string :yelp_id
      t.string :alias
      t.string :type
      t.string :name
      t.float :lat
      t.float :long
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip

      t.timestamps
    end
  end
end
