#### Locations controller  ####

#new

get "/locations/new/?" do
  @location = Location.new
  erb :"locations/new"
end

#create

post "/locations/?" do
  @location = Location.new(params)

  if @location.save
    redirect to("/locations/index")
  else 
    erb :"locations/new"
  end
end

#index
get "/locations/?" do
  @locations = Location.all
  erb :"locations/index"
end

#show
get "/locations/:id/?" do
  @location = Location.find_by_id(params['id'])
  erb :"locations/show"
end

get "/locations/:id/answer/?" do
  @locations = Locations.find_by_id(params['id'])
  erb :"location/answer"
end

#edit
get "/locations/:id/edit/?" do
  @location = Location.find_by_id(params['id'])
  erb :"location/edit"
end

#update

patch "locations/:id/edit/?" do
  @location = Location.find_by_id(params['id'])

  if @location.update_attributes(name: params['name'])

    redirect to ("/locations/#{@location.id}")
  else
    erb :"location/edit"

end


#delete
delete "locations/:id/edit/?"
  @location = Location.find_by_id(params['id'])
  @location.destroy
  redirect to("locations")
end