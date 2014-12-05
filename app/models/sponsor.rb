class Sponsor < ActiveRecord::Base
	has_many :invoices
=begin
	validates :name, presence: true
	validates :address, presence: true
	validates :city, presence: true
	validates :state, presence: true
	validates :zip, presence: true
	validates :phone, presence: true
	validates :email, presence: true
	validates :mobile_phone_number, presence: true
	validates :contact_last_name, presence: true
	validates :contact_first_name, presence: true
	validates :sponsor_ship_type, presence: true
	validates :sponsortype, presence: true
=end
  has_attached_file :picture, :styles => { :medium => "300x300#", :thumb => "100x100#" }, :default_url => 'missing.png'
  
  def self.next(id)
    self.where("id > ?", id).order("id ASC").first || Sponsor.first
  end

  def self.previous(id)
    self.where("id < ?", id).order("id DESC").first || Sponsor.last
  end    

  def self.sponsortypes
      return  ["Sponsor", "Advertiser", "Both"]
  end
end
