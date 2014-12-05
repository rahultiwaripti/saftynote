class Trip < ActiveRecord::Base
  belongs_to :employee
  belongs_to :lovedone
end
