class CreateAlternatives < ActiveRecord::Migration
  def change
    create_table :alternatives do |t|
      t.string :name
      t.text :description
      t.references :company, index: true

      t.timestamps
    end
  end
end
