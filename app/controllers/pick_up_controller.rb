class PickUpController < ApplicationController
  before_action :find_child

  def new
    @pick_up = @child.pick_ups.build
  end
  
  def create
    @pick_up = @child.pick_ups.build(pick_up_params)
    if @pick_up.save
      redirect_to '/dashboard/children/:child_id', notice: "已新增一位可接送的人"
    else
      render :new 
    end
  end

  def show
    @pick_up = @child.pick_ups.find(params[:id])
  end

  def edit
    @pick_up = @child.pick_ups.find(params[:id])
  end

  def update
    if @pick_up.update(book_params)
      redirect_to edit_dashboard_child_pick_up_path, notice: "更新成功"
    else
      render :edit
    end
  end

  def destroy
    
  end

  private
  def find_child
    @child = Child.find(params[:child_id])
  end

  def pick_up_params
    params.require(:pick_up)
          .permit(:name, :pick_up_pic, :relationship, :note)
          # .merge({user: current_user})
  end
end