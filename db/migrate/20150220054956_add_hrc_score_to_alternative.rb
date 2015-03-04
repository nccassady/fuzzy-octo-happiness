class AddHrcScoreToAlternative < ActiveRecord::Migration
  def change
  	change_table :alternatives do |t|
  		t.integer :hrc_score
  	end
  end
end
