# TopTravel

Welcome to TopTravel- an app designed to help you keep track of your top travel destinations.  Create as many lists as you'd like whether you want to organize destinations by season, occasion, family, romantic, continent, etc.  

Unfortunately times are tough these days and travel may be restricted for many of us, but hopefully sooner than later we are all able to get out and explore all of the amazing countries and cultures around the world once again.


## Install Instructions

To use this app- just clone, run bundle install, run rake db:migrate and then run shotgun. Everything should be set up.


## Contributing

Bug reports and pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.


## License

[MIT](https://opensource.org/licenses/MIT)


### Notes
<!-- 
Edit.erb, add Destination(s) and Image URL to Edit form

  <label>Destination(s)</label>
  <textarea name="destination[name]"><%= @list.destinations.map { |destination| destination.name } %></textarea>
  <label>Image URL(s)</label>
  <input type="text" name="destination[image]" value=""> -->



<!-- Index.erb, add Delete option next to Edit ?

<form action="/lists/<%= @list.id %>" method="post">
  <input type="hidden" name="_method" value="delete">
  <% if @list.user == current_user %> 
    <button type="submit">Delete List</button>
  <% end %>  
</form> -->

