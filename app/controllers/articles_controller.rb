class ArticlesController < ApplicationController
  def index
    response = HTTP.auth("#{ENV["NEWS_API_KEY"]}").get("https://newsapi.org/v2/everything?q=tesla")
    data = JSON.parse(response.body)
    render json: data
  end
end
