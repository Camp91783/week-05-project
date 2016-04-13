##Trips Controller#####

# INDEX
get "/trips" do
  @trips = Trip.all
  erb :"trips/index"
end

# NEW
get "/trips/new" do
  @trip = Trip.new
  erb :"trips/new"
end

# CREATE
post "/trips" do
  @trip = Trip.new(params)
  if @trip.save
    redirect to('/trips')
  else
    erb :"trips/new"
  end
end

# SHOW
get "/trips/:id" do
  @trip = Trip.find_by_id(params['id'])
  erb :"trips/show"
end

# EDIT
get "/trips/:id/edit" do
  @trip = Trip.find_by_id(params['id'])
  @trips = Trip.all
  erb :"trips/edit"
end

# UPDATE
patch "/trips/:id" do
  @library = Trip.find_by_id(params['id'])
  if @trip.update_attributes(trip_name: params['trip_name'],
                               description: params['desscription'],
    redirect to("/trips/#{@trip.id}")
  else
    erb :"trips/edit"
  end
end