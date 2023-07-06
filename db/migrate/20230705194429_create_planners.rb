class CreatePlanners < ActiveRecord::Migration[6.1]
  def change
    create_table :planners do |t|
      t.references :user, null: false, foreign_key: true
      t.string :company

      t.timestamps
    end
  end
end
