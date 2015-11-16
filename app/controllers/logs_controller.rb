class LogsController < ApplicationController
  def index
    @student = Student.find(params[:student_id])
  end

 def edit
    @student = Student.find(params[:student_id])
 end



end
