class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.text :description
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :zipcode
    end
  end
end
