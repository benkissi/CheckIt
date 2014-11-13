class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :manufacturer
      t.string :distributer
      t.date :expiry_date
      t.date :manufacturing_date
      t.text :description
      t.string :fda_approved
      t.string :gsa_approved

      t.timestamps
    end
  end
end
