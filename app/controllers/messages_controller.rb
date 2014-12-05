class MessagesController < ApplicationController
  def index
  	@company = current_user.company
  	@employee = Employee.first
  	@employees = current_user.company.employees
  end

  def new
  end

  def edit
  end

  def show
  end

end
