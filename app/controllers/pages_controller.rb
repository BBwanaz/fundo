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
    
    @queries = Query.where(creator: current_user.id) if logged_in?(:student)
     @queries = Query.where(profile_id: current_user.id) if logged_in?(:tutor)
     @queries = Query.all if logged_in?(:root_admin)
   end

end
