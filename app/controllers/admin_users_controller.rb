# encoding: utf-8
require 'digest/sha1'

class AdminUsersController < ApplicationController
  before_filter :set_breadcrumbs, :except => [:destroy]

  def index
    @admin_users = AdminUser.page(params[:page])
  end

  def new
    @admin_user = AdminUser.new
    @breadcrumbs << ['新增帳號']
  end

  def create
    password = Digest::SHA1.hexdigest Time.now.to_i.to_s
    params[:admin_user][:password] = password
    params[:admin_user][:password_confirmation] = password
    @admin_user = AdminUser.new(params[:admin_user])

    if @admin_user.save
      @admin_user.send_reset_password_instructions
      redirect_to admin_users_path
    else
      @breadcrumbs << ['新增帳號']
      render :new
    end
  end

  private
  def set_breadcrumbs
    breadcrumbs << ['帳號', '/admin_users']
  end
end
