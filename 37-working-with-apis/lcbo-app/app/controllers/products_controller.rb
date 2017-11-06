require "json"

class ProductsController < ApplicationController

  def index
    # response = HTTParty.get('https://lcboapi.com/products', headers: { "Authorization" => "Token token=\"#{ENV["LCBO_KEY"]}\"" })
    response = HTTParty.get("https://lcboapi.com/products?access_key=#{ENV["LCBO_KEY"]}")

    parsed_response = JSON.parse(response.body)

    @products = parsed_response["result"]

    # Examples of serving your own API:

    # render json: {
    #   products: @products
    # }

    # render json: {
    #   products: [
    #     {
    #       name: @products[0]["name"],
    #       image: @products[0]["image_thumb_url"]
    #     }
    #   ]
    # }

    # render json: {
    #   products: @products.map do |product|
    #     { name: product["name"], image: product["image_thumb_url"] }
    #   end
    # }
  end

end
