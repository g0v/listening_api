# encoding: utf-8
class ApplicationController < ActionController::API
  protect_from_forgery
  before_filter :authenticate_user!
end
