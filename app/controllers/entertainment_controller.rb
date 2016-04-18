#### Entertainments controller  ####

#new

get "/entertainment/new/?" do
  @entertainment = Entertainment.new
  erb :"entertainment/new"
end

#create

post "/entertainments/?" do
  @entertainment = Entertainment.new(params)

  if @entertainment.save
    redirect to("/entertainment/")
  else 
    erb :"entertainment/new"
  end
end

#index
get "/entertainment/?" do
  @entertainment = Entertainment.all
  erb :"entertainment/index"
end

#show
get "/entertainment/:id/?" do
  @entertainment = Entertainment.find_by_id(params['id'])
  erb :"entertainment/show"
end

get "/entertainment/:id/answer/?" do
  @entertainments = Entertainment.find_by_id(params['id'])
  erb :"entertainment/answer"
end

#edit
get "/entertainment/:id/edit/?" do
  @entertainment = Entertainment.find_by_id(params['id'])
  erb :"entertainment/edit"
end

#update

patch "entertainment/:id/edit/?" do
  @entertainment = Entertainment.find_by_id(params['id'])

  if @entertainment.update_attributes(name: params['name'])

    redirect to ("/entertainments/#{@entertainment.id}")
  else
    erb :"entertainment/edit"
  end  
end

get "entertainment/:id/activities" do
  @entertainment = Entertainment.find_by_id(params['id'])

  erb :"entertainment/activities"
end

#joining location to activity
post "/entertainment/:id/join" do
  @entertainment = Entertainment.find_by_id(params['id'])


end

get '/location/:id/entertainment' do
  @location = Location.find_by_id(params['id'])
  @entertainment = Entertainment.all
 
  erb :"location/entertainment"
end

#join location and entertainment

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

