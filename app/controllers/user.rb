#GET------------------------------:

get '/users/new' do
  erb :'users/new'
end

post '/users/new' do
  user = User.new(params[:user])
  
  if user.save
    session[:id] = user.id
    redirect '/'
  else
    redirect '/users/new'
  end
end
