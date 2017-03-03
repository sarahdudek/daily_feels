get '/feels' do
  erb :'/sessions/new'
end

post '/feels' do
  @discomfort = Discomfort.create(location: params[:discomfort_location], rating: params[:discomfort_rating])
  @comfort = Comfort.create(location: params[:comfort_location], rating: params[:comfort_rating])
  @feel = Feel.new(feeler_id: current_user.id, fatigue_rating: params[:fatigue], hunger_rating: params[:hunger], thirst_rating: params[:thirst], discomfort_id: @discomfort.id, comfort_id: @comfort.id)
  if @feel.save
    redirect "/users/#{current_user.id}"
  else
    status 422
    @errors = @user.errors.full_messages
    redirect "/users/#{current_user.id}"
  end
end


