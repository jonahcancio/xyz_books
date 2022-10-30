class FrontendController < ActionController::Base
  def index
    render file: "public/frontend/index.html", layout: false
  end
end
