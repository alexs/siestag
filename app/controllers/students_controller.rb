class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    redirect_to new_student_url
  end

  def new
    if current_user.student
      redirect_to current_user.student
    else
      @student = Student.new
      @student.build_student_information
    end
  end

  def show
  end

  def create
    @student = Student.new(student_params)
    @student.user_id = current_user.id

     if @student.save
       flash[:success] = "Se ha registrado correctamente tus datos"
       redirect_to @student
     else
       render 'new'
     end
  end

  private
  def set_student
    @student = current_user.student
    #Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit( :name, :middlename, :lastname, :birthplace, :nationality, :user_id, student_information_attributes: [:institution_name, :degree_id, :tutor_id, :activity_type_id, :startmonth, :startyear, :schoolarship, :worktype_related_id] )
  end
end
