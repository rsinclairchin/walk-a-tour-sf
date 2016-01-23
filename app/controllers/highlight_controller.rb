#index  display a list of all highlights
get '/highlights' do
  @highlights = Highlight.all
  erb :index
end

#new  return an HTML form for creating a new photo
get '/highlights/new' do
  erb :new
end

#create create a new photo
post '/highlights' do
  Highlight.create(params)
  redirect
end


#show display a specific photo
get '/highlights/:id' do
  @highlight = Highlight.find(params)
end

#edit return an HTML form for editing a photo
get '/highlights/:id/edit' do
  erb '/edit'
end

#update update a specific photo
put '/highlights/:id' do
  Highlight.update(params)
  redirect
end

#destroy  delete a specific photo
delete '/highlights/:id' do
  highlight = Highlight.find(params[:id])
  highlight.destroy
  redirect
end