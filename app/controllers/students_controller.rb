class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show

  end

  def new
    @student = Student.new
  end

  # def create
  #   @student = Student.create!(student_params)
  #   redirect_to students_index_path
  # end
  #
  # private
  #   def student_params
  #     params.require(:student).permit(:name, :date_of_birth, :address, :phone_number, :email_address)
  #   end

end
