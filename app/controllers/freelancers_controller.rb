class FreelancersController < ApplicationController
  layout "freelancer"

  def index
  	@contact = Contact.new
  end
end

