class UsersController < ApplicationController

  get '/signup' do 
    erb :'users/signup'
  end

  post '/signup' do 
    user = User.new(params)
    if user.save
        session[:user_id] = user.id
        redirect '/lists'
    else 
      @error = "Invalid credentials. Please try again."
      erb :'/users/signup'
    end
  end

  # users can delete account








end