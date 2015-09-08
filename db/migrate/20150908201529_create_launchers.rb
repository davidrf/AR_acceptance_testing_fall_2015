class CreateLaunchers < ActiveRecord::Migration
  def change
    create_table :launchers do |t|
      t.string :name
      t.string :hairdo
      t.string :overall_rating
    end
  end
end
