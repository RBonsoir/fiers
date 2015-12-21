class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :last_name
      t.string :first_name
      t.string :phone
      t.string :position
      t.string :email
      t.references :maker, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
