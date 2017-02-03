class ContactController < ApplicationController
  
  include ApplicationHelper

  before_filter :get_variables

  def index
  end

  private

  def get_variables
    @homepage = yaml_load(:homepage)
    @portfolio = yaml_load(:portfolio_items)
  end

end
