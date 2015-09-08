class CreateLaunchers < ActiveRecord::Migration
  def change
    create_table :launchers do |t|
      t.string :name
      t.string :hairdo_description
      t.string :hair_rating
    end
  end
end
