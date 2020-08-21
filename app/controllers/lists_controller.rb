class ListsController < ApplicationController

  before do 
    require_login
  end

  get '/lists/new' do 
    erb :'/lists/new'
  end

  post '/lists' do 
    list = current_user.lists.build(params["list"])
      if list.save
        redirect '/lists'
      else 
        @error = "Data invalid. Please try again."
        erb :'/lists/new'
      end
  end 

  get '/lists' do 
    @lists = List.all.reverse
    erb :'lists/index'  
  end

  get '/lists/:id' do 
    @list = List.find_by(id: params[:id])
      if @list
        erb :'lists/show'
      else 
        redirect '/lists'
      end   
  end

  get '/lists/:id/edit' do 
    @list = List.find(params[:id])
    if @list.user == current_user
      erb :'/lists/edit' 
    else
      redirect '/lists'
    end
  end

  patch '/lists/:id' do 
    @list = List.find(params[:id])
      if !params["list"]["title"].empty? && !params["list"]["notes"].empty?
        @list.update(params["list"]) if @list.user == current_user
        redirect "/lists/#{params[:id]}"
      else 
        @error = "Please make sure to enter text into all fields."
        erb :'/lists/edit'
      end 
  end

  delete '/lists/:id' do 
    @list = List.find(params[:id])
    @list.destroy if @list.user == current_user
    redirect '/lists'
  end

end

