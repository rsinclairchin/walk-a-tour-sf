#show display a specific highlight
get '/highlights/:id' do
  @highlight = Highlight.find(params[:id])
  erb :'highlights/show'
end

post '/highlights' do
  p " * " * 30
  p params[:audio_file]
  p " * " * 30
  @track = Clyp::TrackUpload.new(file: File.new(params[:audio_file][:tempfile]), title: 'Test', description: '#cool test')
  p @track
  p "  ! " * 30
  erb :'highlights/show'
end

#edit return an HTML form for editing a highlight
get '/highlights/:id/edit' do
  erb '/edit'
end

#update update a specific highlight
put '/highlights/:id' do
  Highlight.update(params)
  redirect
end

#destroy  delete a specific highlight
delete '/highlights/:id' do
  highlight = Highlight.find(params[:id])
  highlight.destroy
  redirect
end

