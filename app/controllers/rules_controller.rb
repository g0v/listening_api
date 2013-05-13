# encoding: utf-8
class RulesController < ApplicationController
  before_filter :set_breadcrumbs, :only => [:index, :new, :edit, :show]
  before_filter :find_rule, :only => [:edit, :update, :show, :destroy]

  def index
    @rules = Rule.page(params[:page])
  end

  def new
    @rule = Rule.new
    @orgs = Org.select('id, name').map {|c| [c.name, c.id]}
    @breadcrumbs << ['新增法條']
  end

  def create
    @rule = Rule.new(params[:rule])

    if @rule.save
      redirect_to rule_path(@rule)
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
      redirect_to rule_path(@rule)
    else
      @orgs = Org.select('id, name').map {|c| [c.name, c.id]}
      render :edit
    end
  end

  def show
    @breadcrumbs << [@rule.title]
  end

  def destroy
    @rule.destroy
    redirect_to rules_path
  end

  private
  def set_breadcrumbs
    breadcrumbs << ['法條', '/rules']
  end

  def find_rule
    @rule = Rule.find(params[:id])
  end
end
