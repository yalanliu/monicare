class ChildrenController < ApplicationController
<<<<<<< HEAD
  def show
    @child = Child.find(params[:id])
    @pick_ups = @child.pick_ups
  end

  def overview
    @child = Child.find(params[:child_id])
  end
    
    def index
        
    end
=======
  
  def index
      
  end
>>>>>>> wip

  def show
      
  end
  
  def new
    @children = Child.new
  end

  def create
    @children = Child.new(child_params)
  
    if @children.save 
      redirect_to children_path, notice: "新增成功!" 
    else
      render :new
    end
  end
  
  private
  
  def child_params
    params.require(:child).permit(:name)
  end
end
