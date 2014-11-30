class AddCodeToCodes < ActiveRecord::Migration
  def change
    add_column :codes, :code, :string
  end
end
