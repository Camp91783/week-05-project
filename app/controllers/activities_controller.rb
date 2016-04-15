#new

get "/activities/new/?" do
  @activity = Activity.new
  erb :"activities/new"
end

#create

post "/activites/?" do
  @activity = Activity.new(params)

  if @activity.save
    redirect to("/activities/index")
  else 
    erb :"activities/new"
  end
end

#index
get "/activities/?" do
  @activities = Activity.all
  erb :"activities/index"
end

#show
get "/activities/:id/?" do
  @activity = Activity.find_by_id(params['id'])
  erb :"activities/show"
end

get "/activities/:id/answer/?" do
  @activities = Activities.find_by_id(params['id'])
  erb :"activity/answer"
end

#edit
get "/actvity/:id/edit/?" do
  @activity = Activity.find_by_id(params['id'])
  erb :"activity/edit"
end

#update

patch "activities/:id/edit/?" do
  @activity = Activity.find_by_id(params['id'])

  if @actvity.update_attributes(name: params['name'], description: params['description'])

    redirect to ("/activities/#{@trip.id}")
  else
    erb :"actvity/edit"

end


#delete
delete "activities/:id/edit/?"
  @activity = Activity.find_by_id(params['id'])
  @actvity.destroy
  redirect to("activities")
end