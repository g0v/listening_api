class Api::TagsController < ApplicationController
  skip_before_filter :authenticate_admin_user!
  respond_to :json

  def index
    @tags = Tag.order('id DESC').page(params[:page])
  end
end
