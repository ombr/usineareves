class BoxesController < ApplicationController
  before_filter :authenticate_user!, only: [:index, :new, :create, :edit]
  before_filter :load_box, only: [:show, :edit]

  def index
    @boxes = current_user.boxes
    return redirect_to new_box_path if @boxes.empty?
  end

  def new
    @box = current_user.boxes.new
  end

  def create
    @box = Box.new box_params
    @box.user = current_user
    if @box.save
      redirect_to box_path(id: @box)
    else
      render :new
    end
  end

  def show
    @reve = Reve.find(@box.reves.accepted.pluck(:id).sample)
  end

  def edit

  end

  private

  def load_box
    @box = Box.find_by(uid: params[:id])
  end

  def box_params
    params.require(:box).permit(:name)
  end
end
