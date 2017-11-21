class CompositionsController < ApplicationController
  before_action :set_composition, only: [:show, :edit, :update, :destroy, :add_part]

  def index
    @compositions = Composition.all
  end

  def show
  end

  def new
    @composition = Composition.new
  end

  def edit
  end

  def create
    @composition = Composition.new(composition_params)

    if @composition.save
      redirect_to @composition, notice: 'Composition was successfully created.'
    else
      render :new
    end
  end

  def update
    if @composition.update(composition_params)
      redirect_to @composition, notice: 'Composition was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @composition.destroy
    redirect_to compositions_url, notice: 'Composition was successfully destroyed.'
  end

  def add_part
    @composition.herbs_compositions.build
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_composition
      @composition = Composition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def composition_params
      params.require(:composition).permit(:number, :name, :author, :description, herbs_compositions_attributes: [:id, :herb_id, :part, :_destroy])
    end
end
