class HerbsController < ApplicationController
  before_action :set_herb, only: [:show, :edit, :update, :destroy]

  def index
    @herbs = Herb.all
  end

  def show
  end

  def new
    @herb = Herb.new
  end

  def edit
  end

  def create
    @herb = Herb.new(herb_params)

    if @herb.save
      redirect_to @herb, notice: 'Herb was successfully created.'
    else
      render :new
    end
  end

  def update
    if @herb.update(herb_params)
      redirect_to @herb, notice: 'Herb was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @herb.destroy
    redirect_to herbs_url, notice: 'Herb was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_herb
      @herb = Herb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def herb_params
      params.require(:herb).permit(:name, :latin_name, :popular_name, :description, :activity_id, :classification_id, effect_ids: [])
    end
end
