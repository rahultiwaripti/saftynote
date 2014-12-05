class PrimaryContact < ActiveRecord::Base
    #has_many: lovedones, :class_name => 'Lovedone', :foreign_key => 'lovedone_id'
    #has_many :lovedones
    belongs_to :lovedone
    #has_and_belongs_to_many :lovedones
    #has_many :users, :class_name => 'Users', :foreign_key => 'user_id'
    #has_one :user
    belongs_to :user
    #has_and_belongs_to_many :users
    #accepts_nested_attributes_for :user

    
end
