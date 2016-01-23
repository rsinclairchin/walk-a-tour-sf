#show display a specific highlight
get '/highlights/:id' do
  @highlight = Highlight.find(params[:id])
  erb :'highlights/show'
end

