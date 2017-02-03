class WorkController < ApplicationController
  
  include ApplicationHelper

  before_filter :get_variables

  def index
  	# @work_item = yaml_load(:portfolio_items).detect do |work_item|
   #    work_item['permalink'].include?(params[:category])
   #  end
  end

  def work_item
  	@work_item = yaml_load(:portfolio_items).detect do |work_item|
      work_item['permalink'].include?(params[:work_item])
    end
    render 'work/item'
  end

  private

  def get_variables
    @homepage = yaml_load(:homepage)
    @portfolio = yaml_load(:portfolio_items)
  end

end
