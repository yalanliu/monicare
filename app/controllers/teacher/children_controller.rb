class Teacher::ChildrenController < BabyclassAppliciationController

  def new
    @student = Child.new
  end

  def create
   
  end

  def show
    @student = Child.find(params[:id])
    @dashboards = @student.dashboards
    @pick_ups = @student.pick_ups
  end

end