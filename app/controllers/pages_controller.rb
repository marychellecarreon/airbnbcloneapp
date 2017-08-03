class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:info]
  def info
  end
end
