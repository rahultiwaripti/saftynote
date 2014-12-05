class Lovedone < ActiveRecord::Base
  #a loved one can have an employess who transports them    
  belongs_to :employee
  #each loved one has a primary contact
  #belongs_to :primary_contact, :foreign_key => 'primary_contact_id'
  has_one :primary_contact , dependent: :destroy
  #http://stackoverflow.com/questions/2108951/how-to-associate-a-new-model-with-existing-models-using-has-and-belongs-to-many?rq=1    
  #has_and_belongs_to_many :followers, :class_name => 'User', :foreign_key => 'user_id', :join_table => 'followers'
  #has_and_belongs_to_many :followers
  
  has_many :followers , dependent: :destroy
  #has_many :users, through: :followers    
  #has_many: users, through: :followers

  has_many :providers
  #http://stackoverflow.com/questions/5395620/filter-json-render-in-rails-3    
  #http://apidock.com/rails/ActiveRecord/Associations/ClassMethods/has_many    
  has_many :trips,  -> { where("state = 'active'")} 

  #has_many :trips,:conditions => {:state => 'active'}    
    
  #
  # 1. create a primary_contact_id key in the lovedones database table. So the belongs_to relationship will work
  #    when you have a lovedone object, you can do lovedone.primary_contact and you will get the primary contact
  #    user.
  
  # 2. followers table is now a HABTM table. So we define a relationship called :followers as has_and_belongs_to_many
  #    so now when you have a lovedone object, you can do a lovedone.followers. This will return an array of Users
  #    object who are the followers of this lovedone.
  #
  # 3. Refer to this page for description of above relationships http://guides.rubyonrails.org/association_basics.html#the-has-and-belongs-to-many-association
  #

  def name
    "#{last_name}, #{first_name}"
  end
  after_initialize do
    #self.primary_contact ||= self.build_primary_contact
  end
    
  def make_primary!(primary_user)
      #self.primary_contact.create!(user_id: primary_user.id)
      #self.primary_contact.save!(user_id: primary_user.id, lovedone_id: self.id)
      self.primary_contact.user_id = primary_user.id
      self.primary_contact.lovedone_id = self.id
      self.primary_contact.save!()
      #create_primary_contact!(user_id: primary_user.id, lovedone_id: self.id)
  end
    
  def remove_primary!(primary_user)
      primary_contact.find_by(primary_contact_id: primary_user.id).destroy
  end    
    
  accepts_nested_attributes_for :followers, allow_destroy: true
    
    #only show loved ones that you follow or that are your primary contact
    def is_primary_contact?(user)
        self.primary_contact.user_id == user.id
    end
    def is_follower?(user)
        self.followers.where("user_id = ?",user.id)
    end    
    def get_invited(user)
        self.followers.where("request_status LIKE ? AND user_id = ?","invited", user.id)
    end  
    
    def approved_followers
        #followers.find_all_by_request_status("approved")
        followers.where(:request_status => "approved")
    end     
end
