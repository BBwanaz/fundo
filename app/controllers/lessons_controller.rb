class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show, :edit, :update, :destroy]
  access all: [:show, :set_lesson],  tutor: [:new, :create, :show, :index, :edit, :update, :destroy, :set_lesson, :lesson_params]


  def show
  end
  
  def new
  	@lesson = Lesson.new
  end

  def edit
  end

  def create
  	    lesson = Lesson.new(lesson_params)
  
    if @lesson.save
      redirect_to my_profile_path, notice: 'Query was successfully created.'
    else
      render :new
    end
  end

  private

  def set_lesson
  	@lesson = Lesson.find(params[:id])
  end

  def lesson_params
  	params.require(:lesson).permit(:paper, :level, :year, :session, :board, :description, :video, :subject_id)
  end
end
