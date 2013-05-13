# encoding: utf-8
class RulesController < ApplicationController
  before_filter :set_breadcrumbs, :only => [:index, :new, :edit, :show]
  before_filter :find_rule, :only => [:edit, :update, :destroy, :add_tags]

  def index
    @rules = Rule.order('id DESC').page(params[:page])
  end

  def new
    @rule = Rule.new(:org_id => params[:org_id])
    @orgs = Org.select('id, name').map {|c| [c.name, c.id]}
    @breadcrumbs << ['新增法條']
  end

  def create
    @rule = Rule.new(params[:rule])

    if @rule.save
      if params[:save_and_create]
        redirect_to new_rule_path(:org_id => @rule.org_id)
      else
        redirect_to rule_path(@rule)
      end
    else
      @orgs = Org.select('id, name').map {|c| [c.name, c.id]}
      render :new
    end
  end

  def edit
    @orgs = Org.select('id, name').map {|c| [c.name, c.id]}
    @breadcrumbs << ["編輯法條－#{@rule.title}"]
  end

  def update
    if @rule.update_attributes(params[:rule])
      if params[:save_and_create]
        redirect_to new_rule_path(:org_id => @rule.org_id)
      else
        redirect_to rule_path(@rule)
      end
    else
      @orgs = Org.select('id, name').map {|c| [c.name, c.id]}
      render :edit
    end
  end

  def show
    @rule = Rule.includes(:rule_tags => :tag).find(params[:id])
    @tags = @rule.tags
    @tags_array = Tag.select('id, eng_name, value').map {|c| "#{c.id}. #{c.eng_name}: #{c.value}"}
    @breadcrumbs << [@rule.title]
  end

  def destroy
    @rule.destroy
    redirect_to rules_path
  end

  def add_tags
    params[:new_tags].each do |tag_id|
      RuleTag.create(:rule_id => @rule.id, :tag_id => tag_id, :is_published => true)
    end
    redirect_to :back
  end

  private
  def set_breadcrumbs
    breadcrumbs << ['法條', '/rules']
  end

  def find_rule
    @rule = Rule.find(params[:id])
  end
end
