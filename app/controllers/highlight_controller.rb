#show display a specific highlight
get '/highlights/:id' do
  @highlight = Highlight.find(params)
  erb :'highlights/show'
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