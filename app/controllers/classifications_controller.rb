class ClassificationsController < ApplicationController
  before_action :set_classification, only: [:show, :edit, :update, :destroy]

  def index
    @classifications = Classification.all
  end

  def show
  end

  def new
    @classification = Classification.new
  end

  def edit
  end

  def create
    @classification = Classification.new(classification_params)

    if @classification.save
      redirect_to @classification, notice: 'Classification was successfully created.'
    else
      render :new
    end
  end

  def update
    if @classification.update(classification_params)
      redirect_to @classification, notice: 'Classification was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @classification.destroy
    redirect_to classifications_url, notice: 'Classification was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classification
      @classification = Classification.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def classification_params
      params.require(:classification).permit(:name, :description, :hierarchy_id, :classification_id)
    end
end
