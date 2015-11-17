class LogsController < ApplicationController
  def index
    @student = Student.find(params[:student_id])
  end

  def edit
    @student = Student.find(params[:student_id])
    @log = Log.find(params[:id])
  end

  def update
    @student = Student.find(params[:student_id])
    @log = Log.find(params[:id])
    @log.update!(log_params)
    redirect_to student_logs_path(@student)
  end

  def new
    @student = Student.find(params[:student_id])
    @log = Log.new
  end

  def create
    @student = Student.find(params[:student_id])
    @log = @student.logs.create!(log_params)
    redirect_to student_logs_path(@student)
  end

  def destroy
    @student = Student.find(params[:student_id])
    @log = Log.find(params[:id])
    @log.destroy
    redirect_to student_logs_path(@student)
  end

  private
    def log_params
      params.require(:log).permit(:date_of_contact, :mode_of_contact, :type_of_contact, :contact_details)
    end

end
