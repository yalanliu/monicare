class EatController < ApplicationController
  def show
    @meal_dashboards = Dashboard.find(params[:id])
  end
end
