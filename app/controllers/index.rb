get '/' do
  logged_in?
  
  @contacts = Contact.order('last_name')
  erb :index
end

def logged_in?
  redirect '/sessions/new' unless !session[:id].nil?
end
