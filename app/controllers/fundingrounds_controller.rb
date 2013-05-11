class FundingroundsController < ApplicationController

  def index
    @fundingrounds = Fundinground.all
  end

  def show
    @fundinground = Fundinground.find_by_id(params[:id])
  end

  def new
    @fundinground = Fundinground.new
  end

  def create
    @fundinground = Fundinground.new
    @fundinground.series = params[:series]
    @fundinground.amount = params[:amount]
    @fundinground.currency = params[:currency]
    @fundinground.date = params[:date]
    @fundinground.entity_receiver_id = params[:entity_receiver_id]
    @fundinground.investment_id = params[:investment_id]
    
    if @fundinground.save
      redirect_to fundingrounds_url
    else
      render 'new'
    end
  end

  def edit
    @fundinground = Fundinground.find_by_id(params[:id])
  end

  def update
    @fundinground = Fundinground.find_by_id(params[:id])
    @fundinground.series = params[:series]
    @fundinground.amount = params[:amount]
    @fundinground.currency = params[:currency]
    @fundinground.date = params[:date]
    @fundinground.entity_receiver_id = params[:entity_receiver_id]
    @fundinground.investment_id = params[:investment_id]
    
    if @fundinground.save
      redirect_to fundingrounds_url
    else
      render 'new'
    end
  end

  def destroy
    @fundinground = Fundinground.find_by_id(params[:id])
    @fundinground.destroy
    redirect_to fundingrounds_url
  end
end
