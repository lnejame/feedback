class UserStepsController < ApplicationController
  include Wicked::Wizard
  steps :company, :project, :comments
  
  def show
    render_wizard
  end
end