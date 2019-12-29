class Teacher::EatController < BabyclassAppliciationController
  before_action :find_student


  def new
    @meal_dashboard = Dashboard.new
  end

  def create

    @meal_dashboard = Dashboard.create(eat_params)

    redirect_to teacher_dashboard_child_path(id: params[:child_id]),notice:'新增成功'
    
  end

  def edit
  end


  private

  def find_student
    @student = Child.find(params[:child_id])
  end

  def eat_params
    params.require(:dashboard).permit(:title, 
                                      :content, 
                                      :finished_at,
                                      :category,
                                      :child_id)
  end
end
