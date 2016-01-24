
#index  display a list of all tours
get '/categories' do
  @tours = Tour.all
  @categories = []
  @tours.each do |tour|
    tour.highlights.each do |highlight|
      @categories << highlight.category
    end
  end
  erb :'categories/index'
end

get '/tours' do
  @tours = Tour.find_by(params)
  erb :'tours/index'
end

get '/tours/:id' do
  @highlight = Highlight.find_by(tour_id: params[:id])
  @tour = Tour.find(params[:id])
  @highlights = @tour.highlights
  erb :'tours/show'
end

get '/map' do
  @highlights = Highlight.all
  erb :map
end

get '/tours/:id/end' do
  @tour = Tour.find(params[:id])
  erb :'tours/end'
end

put '/tours/:id' do
  @tour = Tour.find(params[:id])
  @tour.update_attributes(rating: params[:rating])
end