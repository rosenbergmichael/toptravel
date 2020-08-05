class UsersController < ApplicationController

  # users can sign up
  get '/signup' do 
    erb :'users/signup'
  end

  post '/signup' do 
    # users should not be able to create an account with any blank credentials
    # users should not be able to create an account with a username that already exists
    user = User.new(params)
    if user.save
        session[:user_id] = user.id
        redirect '/lists'
    else 
      @error = "Invalid credentials"
      erb :'/users/signup'
    end
  end

  # users can delete account








end