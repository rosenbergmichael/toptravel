class SessionsController < ApplicationController

  # users can log in
  get '/login' do
    erb :'users/login'
  end

  post '/login' do 
    if params["username"].empty? || params["password"].empty?
      @error = "Please fill in both username and password"
      erb :'users/login'
    else
      if user = User.find_by(username: params["username"], password: params["password"]) 
        session[:user_id] = user.id
        redirect '/lists'
      else
        @error = "Account not found. Please try again."
        erb :'users/login'
      end 
    end       
  end

  # users can log out

  get '/logout' do 
    session.clear 
    redirect '/'
  end


end