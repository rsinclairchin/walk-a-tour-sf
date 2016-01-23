get '/categories' do
  @tour_categories =  Highlight.all
  #iterate through highlights, display category name
end

get '/categories/:category/tours' do
  @tours = Highlight.find(params[:category])
  #iterate and display tour title
end

#input address, API shit
post '/categories/:category/tours' do

end

get '/categories/:category/tours/:id' do
  @highlights = Highlight.find_by(tour_id: params[:id])
  #iterate through highlights
end

