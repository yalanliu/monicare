class Teacher::PickUpController < BabyclassAppliciationController
  def show
    @student = Child.find(params[:child_id])
    @pick_up = @student.pick_ups.find(params[:id])
  end
end