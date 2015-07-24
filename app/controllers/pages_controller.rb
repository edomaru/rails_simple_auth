class PagesController < ApplicationController
  before_action :must_login, only: [:show]
  def index
  end

  def show
  end
end
