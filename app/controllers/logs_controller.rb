class LogsController < ApplicationController
  before_action :find_student

  def find_student
    @student = Student.find(params[:student_id])
  end

  def index
    if current_user
    @students = current_user.students
    else
    end
    @student = Student.find(params[:student_id])
  end

  def edit
    @log = Log.find(params[:id])
  end

  def update
    @log = Log.find(params[:id])
    @log.update!(log_params)
    redirect_to student_logs_path(@student)
  end

  def new
    @log = Log.new
  end

  def create
    @student.logs.create!(log_params)
    redirect_to student_logs_path(@student)
  end

  def destroy
    @log = Log.find(params[:id])
    @log.destroy
    redirect_to student_logs_path(@student)
  end

  private
    def log_params
      params.require(:log).permit(:date_of_contact, :mode_of_contact, :type_of_contact, :contact_details)
    end

end
