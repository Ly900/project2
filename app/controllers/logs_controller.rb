class LogsController < ApplicationController
  def index
    @student = Student.find(params[:student_id])
  end


end
