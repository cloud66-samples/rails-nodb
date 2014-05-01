class HillController < ApplicationController
  respond_to :json, :html
  
  def index
  	respond_to do |format|
      format.html 
      format.json { render json: "test_response" }
  	end
  end
  
  def tjenare
    puts rand(100)
  end
end
