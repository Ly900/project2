class StudentsController < ApplicationController
  before_action :find_student, only: [:show, :edit, :update, :destroy]

  def find_student
    @student = Student.find(params[:id])
  end

  def index
    @students = Student.all
  end

  def show
  end

  def new
    @student = Student.new
  end

  def create
    @user = current_user
    @student = @user.students.create!(student_params)
    redirect_to students_path
  end

  def edit
  end

  def update
    @student.update!(student_params)
    redirect_to students_path
  end

  def destroy
    @student.destroy
    redirect_to students_path
  end

  private
    def student_params
      params.require(:student).permit(:first_name, :last_name, :date_of_birth, :address, :phone_number, :email_address)
    end

end
