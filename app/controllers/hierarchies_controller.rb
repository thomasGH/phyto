class HierarchiesController < ApplicationController
  before_action :set_hierarchy, only: [:show, :edit, :update, :destroy]

  def index
    @hierarchies = Hierarchy.all
  end

  def show
  end

  def new
    @hierarchy = Hierarchy.new
  end

  def edit
  end

  def create
    @hierarchy = Hierarchy.new(hierarchy_params)

    if @hierarchy.save
      redirect_to @hierarchy, notice: 'Hierarchy was successfully created.'
    else
      render :new
    end
  end

  def update
    if @hierarchy.update(hierarchy_params)
      redirect_to @hierarchy, notice: 'Hierarchy was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @hierarchy.destroy
    redirect_to hierarchies_url, notice: 'Hierarchy was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hierarchy
      @hierarchy = Hierarchy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hierarchy_params
      params.require(:hierarchy).permit(:name)
    end
end
