class TeachersController < ApplicationController
  def index
    @student = Child.all
  end

  def student
    @student = Child.find(params[:id])
    @pick_ups = @student.pick_ups
  end
end