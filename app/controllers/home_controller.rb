class HomeController < ApplicationController
  
  include ApplicationHelper

  before_filter :get_variables

  def index
  end

  # def toggle_menu
    # @menu_state = !@menu_state
    # redirect_to "#{params[:controller]}/menu?#{params[:state]}"
    # render 'life'
  # end

  private

  def get_variables
    @homepage = yaml_load(:homepage)
    @portfolio = yaml_load(:portfolio_items)
  end

end
