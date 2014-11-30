class Product < ActiveRecord::Base
  validates_presence_of :product_name, :manufacturer, :distributer, :expiry_date, :manufacturing_date, :description 
  # validates_numericality_of :unitprice, :stocklevel
  # validates_uniqueness_of :pname 
  belongs_to :admin
  has_many :codes
  has_many :reports
  has_attached_file :image, styles: { medium: "400x600>"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
