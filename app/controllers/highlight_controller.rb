#show display a specific highlight
get '/highlights/:id' do
  @highlight = Highlight.find(params[:id])
  @audio = @highlight.audio
  erb :'highlights/show'
end

put '/highlights/:id' do
  @highlight = Highlight.find(params[:id])
  @track = Clyp::TrackUpload.new(file: File.new(params[:audio][:tempfile]), title: 'Test', description: '#cool test')
  @highlight.update_attributes(audio: @track)
  redirect "/highlights/#{@highlight.id}"
end

