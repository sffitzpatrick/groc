class ListsController < ApplicationController
  def index
    @lists = List.all
  end
  def show
    @list = List.find(params[:id])
  end
  def edit
    @list = List.find(params[:id])
  end
  def create
    @list = List.new()
    @list.save
    redirect_to edit_list_path(@list)
    #render plain: params[:list].inspect
  end
end
