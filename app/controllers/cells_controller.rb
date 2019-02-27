class CellsController < InheritedResources::Base
  def index
    @cells = Cell.all
    @product = Product.where(actable_type: "Cell")
  end
  def show
    @cell = Cell.find(params[:id])
    @product = Product.find_by(actable_type: "Cell", actable_id: params[:id])
  end
  private

    def cell_params
      params.require(:cell).permit(:temperature_range, :space, :dimensions, :net_weight, :packed_sizes, :product_id_id)
    end
end

