class PagesController < ApplicationController
access all: [:home, :subjects, :contact], student: [:profile, {except: [:portal]}], tutor: [:portal, :profile], root_admin: :all
  def home
  end

  def subjects
  end

  def contact
  end

  def portal
  	@queries = Query.all
  end

  def profile
  end
end
