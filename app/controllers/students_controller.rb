class StudentsController < ApplicationController
  load_and_authorize_resource
  before_action :find_student, only: [:show, :edit, :update, :destroy]

# make sure to put this method as a private method, as it stands now, find_student is an action that can be called.
# I do love that you're using callbacks in your controller though, this is great!
  def find_student
    @student = Student.find(params[:id])
  end

  def index
    if current_user
    @students = current_user.students
    else
    end
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
    redirect_to student_logs_path(@student)
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
