class ChildrenController < ApplicationController
  def show
    @child = Child.find(params[:child_id]) #實際要改成用家長(user)去撈
    @pick_up = @child.pick_ups.find(params[:id])
  end

  def overview
    @child = Child.find(params[:child_id])
  end
end
