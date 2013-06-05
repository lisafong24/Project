class ChoicesController < ApplicationController

  def index
    @choices = Choice.all
  end

  def show
    @choice = Choice.find_by_id(params[:id])
  end

  def new
    @choice = Choice.new
  end

  def create
    @choice = Choice.new
    
    if @choice.save
      redirect_to choices_url
    else
      render 'new'
    end
  end

  def edit
    @choice = Choice.find_by_id(params[:id])
  end

  def update
    @choice = Choice.find_by_id(params[:id])
    
    if @choice.save
      redirect_to choices_url
    else
      render 'new'
    end
  end

  def destroy
    @choice = Choice.find_by_id(params[:id])
    @choice.destroy
    redirect_to choices_url
  end
end
