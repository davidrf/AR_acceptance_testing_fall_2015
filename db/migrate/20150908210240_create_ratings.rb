class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.string :body
      t.string :user
      t.integer :launcher_id
    end
  end
end
