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
    redirect to("/locations")
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
  erb :"locations/edit"
end

#update

patch "/locations/?" do
  @location = Location.find_by_id(params['id'])

    erb :"locations/edit"
  
end

get "locations/:id/activities" do
  @location = Location.find_by_id(params['id'])
  @activty = Activity.all

  erb :"locations/activities"
end

#joining location to activity
post "/locations/:id/activities/activities_id/join" do
  @location = Location.find_by_id(params['id'])
  @activty = Activity.find_by_id(params['activity_id'])

  @location.Activity << @activity
  redirect to ("/location/#{location.id}/activities")

end

#separate location and activity
  post '/locations/:id/entertainment/join' do
   @location = location.find_by_id(params['id'])
   @entertainment = Entertainment.find_by_id(params['entertainment_id'])
 
   @location.entertainment << @entertainment
   redirect to("/locations/#{@entertainment.id}/entertainment")
  end 
#leave location and entertainment


  post '/location/:id/entertainment/leave' do
   @location = Location.find_by_id(params['id'])
   @entertainment = Entertainment.find_by_id(params['entertainment_id'])
 
   @location.entertainment.delete(@entertainment)
   redirect to("/location/#{@location.id}/entertainment")
  end



