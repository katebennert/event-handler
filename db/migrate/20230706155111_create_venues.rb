class CreateVenues < ActiveRecord::Migration[6.1]
  def change
    create_table :venues do |t|
      t.string :name
      t.integer :max_capacity
      t.integer :cost

      t.timestamps
    end
  end
end
