class Teacher::ChildrenController < BabyclassAppliciationController


  def show
    @student = Child.find(params[:id])
    @medicine_dashboards = @student.dashboards.order(started_at: :desc)
    @meal_dashboards = @student.dashboards.order(finished_at: :desc)
  end

end