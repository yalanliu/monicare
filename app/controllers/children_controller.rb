class ChildrenController < ApplicationController
  def show
    @child = Child.find(params[:id])
    @pick_ups = @child.pick_ups
  end

  def overview
    @child = Child.find(params[:child_id])
  end
end
