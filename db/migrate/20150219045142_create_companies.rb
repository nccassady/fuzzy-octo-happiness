class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :hrc_score
      t.text :description

      t.timestamps
    end
  end
end
