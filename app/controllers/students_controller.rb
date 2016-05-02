class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
    @student = Student.new
    @student.build_student_information
  end

  private
  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit( :name, :middlename, :lastname, :birthplace, :nationality, :user_id )
  end
end
