class CreateMakers < ActiveRecord::Migration
  def change
    create_table :makers do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :postcode
      t.string :country
      t.string :phone
      t.string :website

      t.timestamps null: false
    end
  end
end
