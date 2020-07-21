class PagesController < ApplicationController
access all: [:home, :subjects, :contact], student: {except: [:portal]}, tutor: [:portal], root_admin: :all
  def home
  end

  def subjects
  end

  def contact
  end

  def portal
  end
end
