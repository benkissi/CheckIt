class RemovePicturesFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :pictures, :string
  end
end
