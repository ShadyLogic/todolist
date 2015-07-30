class ListsController < ApplicationController
  def new
  end

  def create
    @list = List.create(list_params)
    redirect_to list_path @list
  end

  def edit
  end

  def destroy
    list.destroy
    redirect_to lists_path
  end

  def show
    list
  end

  def index
    @lists = List.all
  end

  def update
    list.update(list_params)
    redirect_to list_path list
  end

  private
  def list
    @list ||= List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:title, :description)
  end
end
