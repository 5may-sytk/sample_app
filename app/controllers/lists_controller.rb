class ListsController < ApplicationController
  def new
    @list=List.new
  end

  def create
    list=List.new(list_params)
    list.save
    redirect_to list_path(list.id)
  end

  def index
    @list = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
    @list = List.find(params[:id])
  end

  private
  def list_params
    params.require(:list).permit(:title, :body)
  end 
end