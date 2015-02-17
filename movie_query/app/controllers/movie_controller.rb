class MovieController < ApplicationController
  def search
    @movie_title = params["movie_title"]

    unless @movie_title.blank?


      #    @movie_title = params["movie_title"]


      @QUERY_URL = "http://api.rottentomatoes.com/api/public/v1.0/movies.json?apikey="

      @uri = URI(@QUERY_URL + "e4x32v88ekpgtdhd38yx3nbu&q=?" + @movie_title + "&page_limit=1")

      @parsed_data = JSON.parse(Net::HTTP.get(@uri))["movies"]

      @parsed_data.each do |counter|
        @synopsis = counter["synopsis"]
        @id = counter["id"]
        @title = counter["title"]
        @year = counter["year"]
        @mpaa_rating = counter["mpaa_rating"]
        @runtime = counter["runtime"]
        @critics_consensus = counter["critics_consensus"]
        @release_dates = counter["release_dates"]
        @release_dates_theater = @release_dates["theater"]
        @release_dates_dvd = @release_dates["dvd"]
        @ratings = counter["ratings"]
        @posters = counter["posters"]
        @posters_profile = @posters["profile"]

          @abridged_cast = counter["abridged_cast"]
        end
      end
    end
  end
