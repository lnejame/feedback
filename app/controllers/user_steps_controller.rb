class UserStepsController < ApplicationController
  include Wicked::Wizard
  steps :company, :project, :comments
  
  def show
    @company = Company.new
    render_wizard
  end
  
  def update
    @company = Company.find(params[:id])
    @company.attributes = params[:company]
    render_wizard @company
  end
end