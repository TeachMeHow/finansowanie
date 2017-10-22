class ApplicationsController < ApplicationController
  def new
    @application = Application.new
  end

  def create
    @application = Application(params)
  end
end
