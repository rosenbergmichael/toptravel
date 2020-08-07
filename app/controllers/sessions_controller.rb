class SessionsController < ApplicationController

  
  get '/login' do
    erb :'users/login'
  end

  post '/login' do 
    if params["username"].empty? || params["password"].empty?
      @error = "Please fill in both username and password"
      erb :'users/login'
    else
      if user = User.find_by(username: params["username"])
        user.authenticate(params["password"])
        session[:user_id] = user.id
        redirect '/lists'
      else
        @error = "Account not found. Please try again."
        erb :'users/login'
      end 
    end       
  end

  get '/logout' do 
    session.clear 
    redirect '/'
  end


end