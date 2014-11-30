class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :pharmacy_name
      t.string :pharmacy_location
      t.string :pharmacy_landmark
      t.string :additional_info
      t.string :number
      t.string :email
      t.references :product, index: true

      t.timestamps
    end
  end
end
