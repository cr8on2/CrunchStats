class IndustriesController < ApplicationController

  def index
    @industries = Industry.all
  end

  def show
    @industry = Industry.find_by_id(params[:id])
  end

  def new
    @industry = Industry.new
  end

  def create
    @industry = Industry.new
    @industry.category = params[:category]
    
    if @industry.save
      redirect_to industries_url
    else
      render 'new'
    end
  end

  def edit
    @industry = Industry.find_by_id(params[:id])
  end

  def update
    @industry = Industry.find_by_id(params[:id])
    @industry.category = params[:category]
    
    if @industry.save
      redirect_to industries_url
    else
      render 'new'
    end
  end

  def destroy
    @industry = Industry.find_by_id(params[:id])
    @industry.destroy
    redirect_to industries_url
  end
end
