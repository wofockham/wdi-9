class CreateSneakies < ActiveRecord::Migration
  def change
    create_table :sneakies do |t|
      t.text :content

      t.timestamps null: false
    end
  end
end
