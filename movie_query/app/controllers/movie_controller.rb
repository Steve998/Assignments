class MovieController < ApplicationController
  def search
    @movie_title = params["movie_title"]

    @QUERY_URL = "http://api.rottentomatoes.com/api/public/v1.0/movies.json?apikey="

    @uri = URI(@QUERY_URL + "e4x32v88ekpgtdhd38yx3nbu&q=?" + @movie_title + "&page_limit=1")

    @parsed_data = JSON.parse(Net::HTTP.get(@uri))["movies"]

    @parsed_data.each do |counter|
      @synopsis = counter["synopsis"]
    end
  end
end
