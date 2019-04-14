class SplitsController < InheritedResources::Base

 def index
    @splits = Split.paginate(page: params[:page], per_page: 12)
    @product = Product.where(actable_type: "Split")
  end

  def show
    @split = Split.find(params[:id])
    @product = Product.find_by(actable_type: "Split", actable_id: params[:id])
    @additional = @split.cells
  end
end

