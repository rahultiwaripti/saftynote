class VisitorsController < ApplicationController
	def index
		if !current_user.nil? and current_user.admin?
			redirect_to admin_dashboard_path and return
		end
	end
end
