# encoding: utf-8
class OrgsController < ApplicationController
  before_filter :set_breadcrumbs, :except => [:destroy]
  before_filter :find_org, :only => [:edit, :update, :show, :destroy]

  def index
    @orgs = Org.page(params[:page])
  end

  def new
    @org = Org.new
    @breadcrumbs << ['新增機關']
  end

  def create
    @org = Org.new(params[:org])

    if @org.save
      redirect_to orgs_path
    else
      @breadcrumbs << ['新增機關']
      render :new
    end
  end

  def edit
    @breadcrumbs << ["編輯機關－#{@org.name}"]
  end

  def update
    if @org.update_attributes(params[:org])
      redirect_to orgs_path
    else
      @breadcrumbs << ["編輯機關－#{@org.name}"]
      render :edit
    end
  end

  def show
    @breadcrumbs << [@org.name]
  end

  def destroy
    @org.destroy
    redirect_to orgs_path
  end

  private
  def set_breadcrumbs
    breadcrumbs << ['機關', '/orgs']
  end

  def find_org
    @org = Org.find(params[:id])
  end
end
