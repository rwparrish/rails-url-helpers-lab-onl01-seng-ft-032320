class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate
    if @student.active
      @student.toggle!(:active)
      #  @student.active = false
     else
      @student.toggle!(:active)
      #  @student.active = true
    end
    # @student.active
    # @student.save

    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end