helpers do

	def current_user
		@current_user ||= User.where(id: session[:id]).first if session[:id]
	end

  def full_address 
    @address = Highlight.find(params[:address])
    Geocoder.search("@address").inspect.to_s
  end 
	
end