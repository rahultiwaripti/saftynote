class Employee < ActiveRecord::Base
  belongs_to :company
  scope :onlined_employees, -> { where("updated_at > ?", DateTime.now-120.seconds) }
  #belongs_to :lovedone
  has_many :lovedones
  #has_one :company
    
  #state_machine :initial    
  #has_many :lovedones
  #has_and_belongs_to_many :lovedones    
  has_many :trips    
  validates_uniqueness_of :username


end
