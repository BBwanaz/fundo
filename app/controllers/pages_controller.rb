class PagesController < ApplicationController
access all: [:home, :subjects, :contact], student: [:myprofile, {except: [:portal]}], tutor: [:portal, :myprofile], root_admin: :all
  def home
  end

  def subjects
    @lessons = Lesson.all
  end

  def contact
  end

  def portal
  	@queries = Query.all
  end

  def myprofile
  end

end
