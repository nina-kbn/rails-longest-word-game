require "json"
require "open-uri"


class GamesController < ApplicationController
  def new
    @letters = ("A".."Z").to_a.shuffle.first(10)
    @string_letters = @letters.join(" ")
  end

  def score
    @letters = params[:letters].chars
    @array = @letters.reject {|element| element == " "}
    @word = params[:word]

    if
    end







    url = "https://wagon-dictionary.herokuapp.com/#{params[:word]}"
    user_serialized = URI.open(url).read
    user = JSON.parse(user_serialized)


  end
end
