
#index  display a list of all tours
get '/categories' do
  @tours = Tour.all
  @categories = []
  @tours.each do |tour|
    tour.highlights.each do |highlight|
      @categories << highlight.category
    end
  end
  erb :'categories/show'
end

get '/tours' do
  @tours = Tours.find_by(params)
  erb :'tours/index'
end

get '/tours/:id' do
  @tour = Tour.find(params[:id])
  erb :'tours/show'
end

get '/map' do
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