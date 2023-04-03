require_relative '../config/application.rb'


class MinecraftApi < Grape::API
  version 'v1', :using => :path
  format :json
		
  resource :minecraft_items do
  	desc "Returns a list of all minecraft variants and types"
	  get "/all_variants_and_types" do
	    MinecraftItems.all_variants_and_types.to_json
	  end

	  desc "Returns a list of all variants"
	  get "/variants" do
	    MinecraftItems.all_variants.to_json
	  end

	  desc "Returns a list of all types"
	  get "/types" do
	    MinecraftItems.all_types.to_json
	  end

	  desc "Returns a specific minecraft block 'type'"
	  get "/_types" do 
	  	MinecraftItems.minecraft_types[method_name].to_json		
	  end
	  # TODO: Make get routes to take specific types as param
  end
end
