class Company < ActiveRecord::Base
    has_many :employees , dependent: :destroy
    belongs_to :user    
    scope :featured, -> {where(featured: true)}
    scope :home_healths, -> {where(provider_type: 'Home_Health')}
    scope :transports, -> {where(provider_type: 'Transport')}

    #do we really need it here?
    has_many :providers
    has_and_belongs_to_many :employee
    #enum status: [:pending, :approved]

    after_initialize :set_default_status, :if => :new_record?

    has_attached_file :picture, :styles => { :medium => "300x300#", :thumb => "100x100#" }, :default_url => 'missing.png'

    def self.contact_types
        return  ["email","text"]
    end
    #http://amberonrails.com/storing-arrays-in-a-database-field-w-rails-activerecord/
    serialize :contact_method

    def set_default_status
        self.status ||= :pending
    end

    def self.statuses
        [:pending, :approved]
    end

    def approved?
        #self.status == :approved
        self.status == "approved"
    end    

    def to_s
        self.company_name
    end  

    def pending?
        self.status == "pending"
    end

    def self.companies_awaiting
        where(status:'pending').count
    end

    def self.companies_with_transport
        where(provider_type:'Transport').count
    end

    def self.companies_with_home_health
        where(provider_type:'Home_Health').count
    end

    def self.provider_types
        return  [['Transport', 'Transport'],['Home Health','Home_Health']]
    end

end
