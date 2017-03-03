get '/sessions/new' do
  erb :'/sessions/new'
end

get '/auth/:provider/callback' do
  content_type 'text/plain'
  request.env['omniauth.auth'].to_hash.inspect rescue "No Data"

  @user = User.from_omniauth(request.env["omniauth.auth"])
  # sign in
  # redirect somewhere
end

get '/auth/failure' do
  content_type 'text/plain'
  request.env['omniauth.auth'].to_hash.inspect rescue "No Data"
end
