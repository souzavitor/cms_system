class StaticController < ApplicationController
  layout "static"
  def index
    @layout_title += " | Página Principal"
  end
  def about_us
  end
  def contact
  end
end
