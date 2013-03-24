class ProxyController < ApplicationController
  def relay
	  http = Curl.get(params[:url])
	  content = "jsonCallback( #{http.body_str} )"
	  #render :json => content
	  render :json => content
  end

  def demo
  end
end
