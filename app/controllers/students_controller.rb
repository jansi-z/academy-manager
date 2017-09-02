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

    puts @student.teacher.stress_level


    if @student.save
      @student.teacher.stress_level += @student.stress_factor
      @student.teacher.save

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

    @student.teacher.stress_level -= @student.stress_factor
    @student.teacher.save

    if @student.update_attributes(student_params)
      @student.teacher.stress_level += @student.stress_factor
      @student.teacher.save

      redirect_to @student
    else
      render "edit"
    end
  end

  def destroy
    @student = Student.find(params[:id])

    @student.teacher.stress_level -= @student.stress_factor
    @student.teacher.save

    @student.destroy

    redirect_to root_path
  end

end
