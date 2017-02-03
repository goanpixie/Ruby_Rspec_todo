class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :user_name
      t.float :user_age
      t.string :pet_name
      t.float :pet_age

      t.timestamps
    end
  end
end
