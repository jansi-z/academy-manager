class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def student_params
    params.require(:student).permit(:name, :age, :stress_factor, :image_url, :teacher_id)
  end

  def create
    @student = Student.new(student_params)

    if @student.save
      redirect_to @student
    else
      render "new"
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])

    if @student.update_attributes(student_params)
      redirect_to @student
    else
      render "edit"
    end
  end

  def destroy
    @student = Student.find(params[:id])

    @student.destroy

    redirect_to students_path
  end

end
