class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :registration_number
      t.string :address
      t.string :zip_code
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
