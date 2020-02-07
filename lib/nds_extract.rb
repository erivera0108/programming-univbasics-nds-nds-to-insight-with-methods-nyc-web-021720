$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

pp directors_database[0][:movies][0][:worldwide_gross]


def gross_for_director(director_data)
  result = 0 
  director_name = 0 
  while director_name < director_data.length do 
    movie_titles = 0 
    header = director_data[director_name][:movies]
    while movie_titles < header.length do 
      result += directors_data[director_name][:movies][movie_titles][:worldwide_gross]
      movie_titles += 1
    end
    director_name += 1
  end
  result
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  
end


