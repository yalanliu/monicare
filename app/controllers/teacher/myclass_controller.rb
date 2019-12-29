class Teacher::MyclassController < BabyclassAppliciationController
  def show
    @myclass = Babyclass.find(params[:id])
    @students = @myclass.children
  end
end
