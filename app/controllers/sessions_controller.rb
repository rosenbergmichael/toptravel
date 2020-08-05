class SessionsController < ApplicationController

  # users can log in
  get '/login' do
    erb :'users/login'
  end

  # users can log out


end