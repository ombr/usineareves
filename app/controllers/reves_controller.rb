# RevesController
class RevesController < ApplicationController
  def show
    params[:id] = Reve.accepted.pluck(:position).sample unless params[:id]
    @reve = Reve.find_by_position(params[:id])
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
