class Provider < ActiveRecord::Base
  belongs_to :company
  has_and_belongs_to_many :employee
  belongs_to :lovedone


    
  #has_and_belongs_to_many :lovedones    
  validates_uniqueness_of :company_id, :scope => :lovedone_id
end
