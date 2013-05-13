# encoding: utf-8
class TagsController < ApplicationController
  before_filter :set_breadcrumbs, :except => [:destroy]
  before_filter :find_tag, :only => [:edit, :update, :show, :destroy]

  def index
    @tags = Tag.order('id DESC').page(params[:page])
  end

  def new
    @tag = Tag.new
    @breadcrumbs << ['新增標籤']
  end

  def create
    params[:tag][:name].strip!
    params[:tag][:eng_name].strip!
    params[:tag][:is_published] = true
    @tag = Tag.new(params[:tag])

    if @tag.save
      if params[:save_and_create]
        redirect_to new_tag_path(:name => @tag.name, :eng_name => @tag.eng_name)
      else
        redirect_to tags_path
      end
    else
      @breadcrumbs << ['新增標籤']
      render :new
    end
  end

  def edit
    @breadcrumbs << ["編輯標籤－#{@tag.name}"]
  end

  def update
    params[:tag][:name].strip!
    params[:tag][:eng_name].strip!
    if @tag.update_attributes(params[:tag])
      redirect_to tags_path
    else
      @breadcrumbs << ["編輯標籤－#{@tag.name}"]
      render :edit
    end
  end

  def show
    @breadcrumbs << [@tag.name]
  end

  def destroy
    @tag.destroy
    redirect_to tags_path
  end

  private
  def set_breadcrumbs
    breadcrumbs << ['標籤', '/tags']
  end

  def find_tag
    @tag = Tag.find(params[:id])
  end
end
