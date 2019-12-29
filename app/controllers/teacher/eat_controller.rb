class Teacher::EatController < BabyclassAppliciationController
  before_action :find_student


  def new
  end

  def edit
  end


  private

  def find_student
    @student = Child.find(params[:child_id])
  end
end
