# GET ===========================================================================

get '/' do
	if request.xhr?
		"Your tweet has been posted!, Check your Twitter page."
	else
  	erb :index
  end
end

# POST ==========================================================================

post '/' do
	Twitter.update("#{params[:user_tweet]}")
	redirect '/'
end