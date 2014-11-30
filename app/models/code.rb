class Code < ActiveRecord::Base
  belongs_to :product
  belongs_to :admin
  validates :code, :presence => true, :uniqueness => true
end  
