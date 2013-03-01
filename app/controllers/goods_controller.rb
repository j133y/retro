# encoding : utf-8
class GoodsController < ApplicationController

  before_filter :ensure_authentication

  # POST /goods
  def create
    good = Good.new(params[:good])
    good.save
    redirect_to retrospective_path(params[:retrospective_id])
  end
end
