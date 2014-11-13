class Product < ActiveRecord::Base
  validates_presence_of :product_name, :manufacturer, :distributer, :expiry_date, :manufacturing_date, :description 
  # validates_numericality_of :unitprice, :stocklevel
  # validates_uniqueness_of :pname 
  belongs_to :admin
end
