class ListsController < ApplicationController

  # CREATE

    # New 
    # make a get request to '/lists/new'
    get '/lists/new' do 
      erb :'/lists/new'
    end



    # Create
    # make a post request to '/lists'
    post '/lists' do 
      list = List.new(params)
      if !list.title.empty? && !list.notes.empty?
        list.save
        redirect '/lists'
      else 
        @error = "Data invalid. Please make sure to enter text into both fields."
        erb :'/lists/new'
      end
    end


  # READ

    #Index (all lists)
    # make a get request to '/lists'
  
    get '/lists' do 
      @lists = List.all
      erb :'lists/index' 
    end

    #Show (single lists)
    # make a get request to '/lists/:id'

    get '/lists/:id' do 
      @list = List.find(params["id"])
      erb :'lists/show'
    end



  # UPDATE

    # Edit
    # make a get request to '/lists/:id/edit'

    # Update
    # make a patch request to '/lists/:id'



  # DESTROY

    # make a delete request to '/lists/:id'




end