class AssociationsController < ApplicationController
  before_action :set_association, only: [:show, :edit, :update, :destroy]

  # GET /associations
  def index
    @associations = Association.all
  end

  # GET /associations/1
  def show
  end

  # GET /associations/new
  def new
    @association = Association.new
  end

  # GET /associations/1/edit
  def edit
  end

  # POST /associations
  def create
    @association = Association.new(association_params)

    if @association.save
      message = 'Association was successfully created.'
      if Rails.application.routes.recognize_path(request.referrer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
        redirect_back fallback_location: request.referrer, notice: message
      else
        redirect_to @association, notice: message
      end
    else
      render :new
    end
  end

  # PATCH/PUT /associations/1
  def update
    if @association.update(association_params)
      redirect_to @association, notice: 'Association was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /associations/1
  def destroy
    @association.destroy
    message = "Association was successfully deleted."
    if Rails.application.routes.recognize_path(request.referrer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
      redirect_back fallback_location: request.referrer, notice: message
    else
      redirect_to associations_url, notice: message
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_association
      @association = Association.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def association_params
      params.require(:association).permit(:name, :source_association_id, :through_association_id, :origin_model_id, :terminus_model_id, :foreign_key, :nature)
    end
end
