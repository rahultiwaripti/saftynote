class User < ActiveRecord::Base
  has_one :profile, dependent: :destroy
  accepts_nested_attributes_for :profile, :allow_destroy => true    
    
  has_one :company, dependent: :destroy
  accepts_nested_attributes_for :company, :allow_destroy => true
    
  has_many :followers, dependent: :destroy
  has_many :primary_contacts, dependent: :destroy
  has_many :lovedones, through: :followers
  accepts_nested_attributes_for :lovedones, :allow_destroy => true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
  #enum role: [:user, :vip, :admin]
  #user is the default user which is guardian or follower of loved one
  #enum role: [:user, :primaryuser, :serviceprovider, :admin]  
  #service provider are business owners/employers and employees work for them
  enum role: [:user, :serviceprovider, :admin, :employee, :family_member]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
    #also build profile, required for creating a new unsaved profile  
    #self.build_profile  
  end

  def send_on_create_confirmation_instructions
    
  end

  def send_on_create_confirmation_instructions_ex
    #send_devise_notification(:confirmation_instructions)
    send_confirmation_instructions
  end
  
  validates_acceptance_of :terms
    
    def self.search(search)
      #searchrole = :user      
      searchrole = "0"    
      if search
        where('name LIKE ? AND role = ?', "%#{search}%", searchrole)
      else
        #scoped
        #http://stackoverflow.com/questions/18198963/with-rails-4-model-scoped-is-deprecated-but-model-all-cant-replace-it  
        #where(nil)
        #where(role: :user)  
        #where('role = ?',"0")    
        where('role = ?',searchrole)      
      end
    end
    
    enum selected_page: [:accounts, :providers, :admins]
    
    def self.users_with_company
        #where(:profile => IS NOT NULL)
        #profile
        User.joins("LEFT OUTER JOIN profiles ON profiles.user_id = users.id").where("profiles.id IS null")
    end
    def self.users_with_profile
        #where(:profile => IS NOT NULL)
        #profile
        User.joins("LEFT OUTER JOIN profiles ON profiles.user_id = users.id").where("profiles.id IS NOT null")
    end
    def name
      "#{profile.last_name}, #{profile.first_name}"
    end

    def primary_contact?
      primary_contacts.count>0
    end
    
    
end
