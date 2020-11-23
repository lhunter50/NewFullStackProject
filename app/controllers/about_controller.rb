class AboutController < ApplicationController
  def index
    @about = About.all
  end

  def show
  end
end
