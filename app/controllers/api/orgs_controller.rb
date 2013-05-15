class Api::OrgsController < ApplicationController
  skip_before_filter :authenticate_admin_user!
  respond_to :json

  def index
    @orgs = Org.order('id DESC').page(params[:page])
  end

  def show
    @org = Org.find_by_eng_name(params[:id])
  end
end
