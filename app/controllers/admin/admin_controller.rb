class Admin::AdminController < ApplicationController

  def dashboard
  	@leave_managements = LeaveManagement.all
    @users = User.all
    render 'admin/dashboard.html'
  end
end