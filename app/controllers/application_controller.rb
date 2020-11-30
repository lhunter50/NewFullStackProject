class ApplicationController < ActionController::Base
  before_action :initialize_session

  private

  def initialize_session
    session[:visit_count] ||= 0
  end

  def increase_visits

  end

  def visit_count

  end

end
