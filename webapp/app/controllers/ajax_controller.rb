class AjaxController < ApplicationController

 protect_from_forgery except: :set_ip_loc

  def set_ip_loc
    json = request.raw_post
    data = JSON.parse(json)
    # data = JSON.parse(data)
    data = data.to_json
    data = JSON.parse(data)
    session[:ip] = data["ip"]
    session[:lat] = data["lat"]
    session[:pos] = data["pos"]
    render nothing: true
  end

end
