
get '/contacts/new' do
  erb :'contacts/new'
end

get '/contacts/:id' do
  @contact = Contact.find(params[:id])
  erb :'contacts/show'
end

get '/contacts/:id/edit' do
  @contact = Contact.find(params[:id])
  
  erb :'contacts/edit'
end




#POSTS--------------------------------------------:
post '/contacts' do
  @new = Contact.new(params[:contact])

  if @new.save
    redirect '/'
  else
    erb :'/contacts/new'
  end
end

post '/contacts/:id' do
  @contact = Contact.find(params[:id])

  if @contact.update_attributes(params[:contact])
    redirect '/'
  else
    erb :'/contacts/edit'
  end
end

post '/contacts/:id/delete' do
  @contact = Contact.find(params[:id])
  @contact.destroy
  redirect '/'
end
