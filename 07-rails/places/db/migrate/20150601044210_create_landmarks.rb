class CreateLandmarks < ActiveRecord::Migration
  def change
    create_table :landmarks do |t|
      t.text :name
      t.text :description
      t.text :address

      t.timestamps null: false
    end
  end
end
