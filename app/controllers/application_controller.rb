class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from "ActionController::UnknownFormat", :with => :render_404
  rescue_from "ActionController::UnknownAction", :with => :render_403
  rescue_from "ActionController::RoutingError",  :with => :render_403
  rescue_from "ActiveRecord::RecordNotFound",    :with => :render_404

private
  def render_404
    render_errors(404, "Not Found", "Not Found")
  end
  def render_403
    render_errors(403, "Forbidden", "Forbidden")
  end

  def render_errors(code, status, message = "Not Found")
    respond_to do |format|
      format.html { render :file => File.join(Rails.public_path, "#{code}.html"), :layout => false, :status => status }
      format.xml { head code }
      format.json {
        render :status => code,
           :json => {errors: {base: message} }
      }
      format.any { head code }
    end
    return false
  end
end
