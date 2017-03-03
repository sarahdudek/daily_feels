get '/users/new' do
 erb :'/users/new'
end

get '/auth/:provider/callback' do
  content_type 'text/plain'
  request.env['omniauth.auth'].to_hash.inspect rescue "No Data"

  @user = User.from_omniauth(request.env["omniauth.auth"])


  set_user(@user)

  redirect "/users/#{@user.id}"
end

get '/auth/failure' do
  content_type 'text/plain'
  request.env['omniauth.auth'].to_hash.inspect rescue "No Data"
end

get '/users/edit' do
  @user = User.find_by(id: current_user.id)
  erb :'/users/edit'
end

put '/users/:id/edit' do
  @user = User.find_by(id: params[:id])
  @user.update_attributes(name: params[:name], birthdate: params[:birthdate], gender: params[:gender])

  redirect "/users/#{@user.id}"
end

get '/users/:id' do
  @user = User.find_by(id: current_user.id)
  if @user == current_user
    erb :'/users/show'
  else
    redirect '/'
  end
end
