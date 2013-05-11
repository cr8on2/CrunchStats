class InvestmentsController < ApplicationController

  def index
    @investments = Investment.all
  end

  def show
    @investment = Investment.find_by_id(params[:id])
  end

  def new
    @investment = Investment.new
  end

  def create
    @investment = Investment.new
    @investment.entity_funding_id = params[:entity_funding_id]
    @investment.funding_round_id = params[:funding_round_id]
    
    if @investment.save
      redirect_to investments_url
    else
      render 'new'
    end
  end

  def edit
    @investment = Investment.find_by_id(params[:id])
  end

  def update
    @investment = Investment.find_by_id(params[:id])
    @investment.entity_funding_id = params[:entity_funding_id]
    @investment.funding_round_id = params[:funding_round_id]
    
    if @investment.save
      redirect_to investments_url
    else
      render 'new'
    end
  end

  def destroy
    @investment = Investment.find_by_id(params[:id])
    @investment.destroy
    redirect_to investments_url
  end
end
