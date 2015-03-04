class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :value
      t.references :user, index: true
      t.references :alternative, index: true

      t.timestamps
    end
  end
end
