class Setting < ActiveRecord::Base
	def self.setting_keys
		['notification_fee']
	end

	def self.get_value(key)
		where(key: key).first.value
	end
end
