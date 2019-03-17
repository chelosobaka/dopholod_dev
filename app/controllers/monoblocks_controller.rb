class MonoblocksController < InheritedResources::Base

  def index
    @monoblocks = Monoblock.all
    @product = Product.where(actable_type: "Monoblock")
  end

  def show
    @monoblock = Monoblock.find(params[:id])
    @product = Product.find_by(actable_type: "Monoblock", actable_id: params[:id])
    @additional = @monoblock.cells
  end
end

