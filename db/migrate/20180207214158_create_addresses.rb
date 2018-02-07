class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.text :description
      t.string :street_address
      t.string :city
      t.string :string
      t.string :state
      t.string :zipcode
      t.string :integer
    end
  end
end
