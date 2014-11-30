# RevesController
class RevesController < ApplicationController
  def show
    params[:id] = Reve.pluck(:id).sample unless params[:id]
    @reve = Reve.find(params[:id])
  end

  def create
    @reve = Reve.new reve_params
    @reve.save!
    redirect_to root_path
  end

  def reve_params
    params.require(:reve).permit(:author, :citation)
  end
end
