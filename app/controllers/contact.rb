
get '/contacts/new' do
  erb :'contacts/new', layout: !request.xhr?
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
    if request.xhr?
      erb :_contact_row, layout: false, locals: { contact: @new }
    else
      redirect "/contacts/#{@new.id}"
    end
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
