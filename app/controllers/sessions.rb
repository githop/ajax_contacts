#GET---------------------------------:

get '/sessions/new' do

  erb :'sessions/new'
end

get '/sessions/destroy' do
  session[:id] = nil
  redirect '/sessions/new'
end

#POSTS-------------------------------:
post '/sessions' do
  user = User.authenticate(params[:username], params[:password])
  
  if user
    session[:id] = user.id
    redirect '/'
  else
    "whoops"
  end
end
