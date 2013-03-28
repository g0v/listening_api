class RulesController < ApplicationController
  def inde
    @rules = Rule.page(:page => params[:page], :per => 20)
  end

  def new
    @rule = Rule.new
  end

  def create

  end

  def edit

  end

  def update

  end

  def show

  end

  def destroy

  end
end
