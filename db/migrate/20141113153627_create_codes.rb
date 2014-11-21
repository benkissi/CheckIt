class CreateCodes < ActiveRecord::Migration
  def change
      create_table :codes do |t|
      t.string   :code
      t.integer  :product_id
      t.integer  :admin_id
      t.timestamps
   end
  end
end
