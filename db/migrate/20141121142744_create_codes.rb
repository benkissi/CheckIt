class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.references :product, index: true
      t.references :admin, index: true

      t.timestamps
    end
  end
end
