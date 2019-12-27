class DashboardsController < ApplicationController
  def show
    @children = Child.all    
  end
end  