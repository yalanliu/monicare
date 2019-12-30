class Teacher::ChildrenController < BabyclassAppliciationController


  def show
    @student = Child.find(params[:id])
    @dashboards = @student.dashboards
  end

end