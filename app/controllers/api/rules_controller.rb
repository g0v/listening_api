class Api::RulesController < ApplicationController
  skip_before_filter :authenticate_admin_user!
  before_filter :find_org, :excerpt => :get
  respond_to :json

  def index
    @rules = @org.rules.order('id DESC').page(params[:page])
  end

  def show
    @rule = @org.rules.find(params[:id])
    @tags = @rule.tags
  end

  def get
    @rule = Rule.find(params[:id])
    @org = @rule.org
    @tags = @rule.tags
    render :show
  end

  private
  def find_org
    @org = Org.includes(:rules => :tags).find_by_eng_name(params[:org_id])
  end
end
