get '/' do
  logged_in?
  
  @contacts = []
  erb :index
end

def logged_in?
  redirect '/sessions/new' unless !session[:id].nil?
end
