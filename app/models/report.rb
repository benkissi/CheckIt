class Report < ActiveRecord::Base
  belongs_to :product
  validates :pharmacy_name, :presence=>true
end
