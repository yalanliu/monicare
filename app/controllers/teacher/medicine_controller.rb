class Teacher::MedicineController < BabyclassAppliciationController


  def show 


    @student = Child.find(params[:child_id])
    @medicine_dashboard = @student.dashboards.medicine.find(params[:id])
  end



end

