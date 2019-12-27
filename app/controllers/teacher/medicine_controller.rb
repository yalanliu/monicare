class Teacher::MedicineController < ApplicationController
  before_action :baby_class

  def show 


    @student = Child.find(params[:id])
    @medicine_dashboard = @student.dashboards.medicine
  end


  def baby_class
    @babyclass = Babyclass.all
  end
end

