class Follower < ActiveRecord::Base
  belongs_to :user
  belongs_to :lovedone
  #has_and_belongs_to_many :lovedones
  #has_and_belongs_to_many :users
    
  validates_inclusion_of :request_status, :in => %w( invited requested approved )

  def is_invited
      where("request_status = ?",  "invited")
  end  
  
  def is_approved_follower(user)
      #self.find()
  end  
end
