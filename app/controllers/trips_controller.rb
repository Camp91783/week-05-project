##Trips Controller#####

#new

get "/trips/new/?" do
  @trip = Trip.new
  erb :"trips/new"
end

#create

post "/trips/?" do
  @trip = Trip.new(params)

  if @trip.save
    redirect to("/trips/index")
  else 
    erb :"trips/new"
  end
end

#index
get "/trips/?" do
  @trips = Trip.all
  erb :"trips/index"
end

#show
get "/trips/:id/?" do
  @trip = Trip.find_by_id(params['id'])
  erb :"trips/show"
end

get "/trips/:id/answer/?" do
  @trips = Trips.find_by_id(params['id'])
  erb :"trip/answer"
end

#edit
get "/trips/:id/edit/?" do
  @trip = Trip.find_by_id(params['id'])
  erb :"trip/edit"
end

#update

patch "trips/:id/edit/?" do
  @trip = Trip.find_by_id(params['id'])

  if @trip.update_attributes(name: params['name'], description: params['description'])

    redirect to ("/trips/#{@trip.id}")
  else
    erb :"trip/edit"

end


#delete
delete "trips/:id/edit/?"
  @trip = Trip.find_by_id(params['id'])
  @trip.destroy
  redirect to("trips")
end