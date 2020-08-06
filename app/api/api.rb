# module Country 
  

#   class API
    
#     # def get_api 
#     #   countries = HTTParty.get("https://restcountries.eu/rest/v2/all")  

#     #   @list = List.new 
#     #   @destination = Destination.new
#     #   destinations = countries.each do |country|
        
#     #     destination = Destination.find_or_create_by(name: country["name"])
#     #     @list.destinations << destination
#     #     # countries.each do |country|  
#     #     # Destination.new(country["name"])
#     #   end   
#     #   @list.save
#     # end 

#     def get_api 
#       countries = HTTParty.get("https://restcountries.eu/rest/v2/all")  
#       countries.each do |country|  
#         Destination.find_or_create_by(country["name"])
#       end   
#     end 




#   end


# end