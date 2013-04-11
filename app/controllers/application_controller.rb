# encoding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_admin_user!

  def breadcrumbs
    @breadcrumbs = []
    @breadcrumbs << ['後台', root_path]
  end
end
