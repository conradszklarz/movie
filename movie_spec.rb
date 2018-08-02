require_relative 'spec_helper'
require_relative 'movie'

describe Movie do

  it "has a capitalized title" do
    movie = Movie.new("goonies", 10)
  expect(movie.title).to eq("Goonies")
  end

  it "has an initial rank" do
    movie = Movie.new("goonies", 10)
  expect(movie.rank).to eq (10)
  end

  it "has a string representation" do
    movie = Movie.new("goonies", 10)
  expect(movie.to_s).to eq("Goonies has a rank of 10.")
  end

  it "increased rank by 1 when given a thumbs up" do
  initial_rank = 10
  movie = Movie.new("goonies", initial_rank)

  movie.thumbs_up
  expect(movie.rank).to eq(initial_rank + 1)
  end

  it "decreases rank by 1 when given a thumbs down" do
  initial_rank = 10
  movie = Movie.new("goonies", initial_rank)

  movie.thumbs_down
  expect(movie.rank).to eq(initial_rank - 1)
  end
end