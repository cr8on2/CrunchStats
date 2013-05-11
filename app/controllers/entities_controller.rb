class EntitiesController < ApplicationController

  def index
    @entities = Entity.all
  end

  def show
    @entity = Entity.find_by_id(params[:id])
  end

  def new
    @entity = Entity.new
  end

  def create
    @entity = Entity.new
    @entity.name = params[:name]
    @entity.kind = params[:kind]
    @entity.location = params[:location]
    @entity.status = params[:status]
    @entity.perma = params[:perma]
    @entity.industry_id = params[:industry_id]
    
    if @entity.save
      redirect_to entities_url
    else
      render 'new'
    end
  end

  def edit
    @entity = Entity.find_by_id(params[:id])
  end

  def update
    @entity = Entity.find_by_id(params[:id])
    @entity.name = params[:name]
    @entity.kind = params[:kind]
    @entity.location = params[:location]
    @entity.status = params[:status]
    @entity.perma = params[:perma]
    @entity.industry_id = params[:industry_id]
    
    if @entity.save
      redirect_to entities_url
    else
      render 'new'
    end
  end

  def destroy
    @entity = Entity.find_by_id(params[:id])
    @entity.destroy
    redirect_to entities_url
  end
end
