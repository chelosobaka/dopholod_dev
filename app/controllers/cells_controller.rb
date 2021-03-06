class CellsController < InheritedResources::Base
  def index
    @cells = Cell.page(params[:page]).per(12)
    @product = Product.where(actable_type: "Cell")
  end
  def show
    @cell = Cell.find(params[:id])
    @product = Product.find_by(actable_type: "Cell", actable_id: params[:id])
    @additional = @cell.monoblocks + @cell.splits
  end
end

