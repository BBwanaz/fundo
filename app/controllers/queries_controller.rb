class QueriesController < ApplicationController
  before_action :set_query, only: [:show, :edit, :update, :destroy, :update_status, :set_creator, :archive]
  access  student: [:new,:create, {except: [:show, :edit, :update,  :destroy, :set_query, :query_params]}], tutor: [:archive, :update_status,:show, :index, :edit, :update, :destroy, :set_query, :query_params]

  # GET /queries
  # Queries index is in pages and is called Portal
  # GET /queries/1
  # Creator is different Owner
  def show
    @creator = Profile.find(@query.creator)
  end


  # GET /queries/new
  def new
    @query = Query.new
    @query.build_subject
    @query.build_profile
  end

  # GET /queries/1/edit
  def edit
  end

  def update_status
    if @query.active?
      @query.accepted!
      @query.update(profile_id: current_user.profile_id)
    
  elsif @query.profile_id == @current_user.profile_id
    @query.active!
    @query.update(profile_id: @query.creator)
  end
    redirect_to my_profile_path
  end

  def archive
    @query.archived!
    @query.update(profile_id: 13)
    redirect_to new_lesson_path
  end

  # POST /queries
  def create
    @query = Query.new(query_params)
    @query.profile_id = current_user.profile_id
    @query.creator = @current_user.profile_id
  
    if @query.save
      redirect_to my_profile_path, notice: 'Query was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /queries/1
  def update
    if @query.update(query_params)
      redirect_to @query, notice: 'Query was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /queries/1
  def destroy
    @query.destroy
    redirect_to portal_path, notice: 'Query was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_query
      @query = Query.friendly.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def query_params
      params.require(:query).permit(:paper, :level, :year, :session, :board, :description, :image, :subject_id, :profile_id)
    end
end
