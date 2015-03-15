# RevesController
class RevesController < ApplicationController
  def show
    params[:id] = Reve.accepted.pluck(:position).sample unless params[:id]
    @reve = Reve.find_by_position(params[:id])
  end

  def create
    @box = Box.find_by(uid: params[:box_id])
    @reve = @box.reves.create! reve_params
    flash[:success] = t('reves.created')
    redirect_to box_path(@box)
  end

  def reve_params
    params.require(:reve).permit(:author, :citation)
  end
end
