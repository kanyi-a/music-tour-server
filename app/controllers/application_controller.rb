class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  #get requestS
  get "/" do
    event = Event.all
    event.to_json(include: { venue: { only: [:venue_name, :capacity, :phone, :address] }, 
      user: { only: [:username, :nickname] }})
  end

  get '/users' do
    users = User.all
    users.to_json(include: :event)
   end

   get '/user/:id' do
     users = User.find(params[:id])
     users.to_json(include: :event)
   end

  get '/venues' do 
    venues = Venue.all
    venues.to_json( only: [:venue_name, :id] )
  end
#POST REQUEST

post '/add-venue' do
  venue = Venue.create(
    venue_name: params[:venue_name],
    address: params[:address],
    phone: params[:phone],
    capacity: params[:capacity]
  )
  venue.to_json
end

post '/add-event' do
  event = Event.create(
    venue_id: params[:venue_id],
    user_id: params[:user_id],
    attendees: params[:attendees],
    price: params[:price],
    event_type: params[:event_type],
    date: params[:date]
  )
  event.to_json
end
##delete request

delete '/events/:id' do
  event = Event.find(params[:id])
  event.destroy.to_json
end

##patch request
patch '/events/:id' do 
  event = Event.find(params[:id])
  event.update(
      event_type: params[:event_type],
      attendees: params[:attendees],
      price: params[:price],
      date: params[:date],

  )
  event.to_json(include: { venue: { only: [:venue_name, :capacity, :phone, :address] }, 
    user: { only: [:username, :nickname] }})
end


##get
get '/most-popular' do
  user = User.most_popular
  user.to_json
 end



 get '/busy-bee' do
   user = User.busy_beaver
   user.to_jsonn
 end

end
