class ContactController < ApplicationController
  def home
  end

  def index
    @contact = Contact.order(:title)
  end

  def show

end

end
