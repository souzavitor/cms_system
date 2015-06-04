class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_default_title
  def set_default_title
    @layout_title = "CMS System"
  end
end
