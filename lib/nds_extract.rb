require 'directors_database'
require 'pp'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)

  index = 0
  result = {}

  while index < nds.length do
    director = nds[index][:name]
    result[director] = 0
    movie_index = 0
    while movie_index < nds[index][:movies].length do
    result[director] +=  nds[index][:movies][movie_index][:worldwide_gross]
    movie_index += 1
    end
      index += 1
  end
  return result
end


# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
    #pp director_data

    result = {}
    movie_index = 0

    while movie_index < director_data[:movies].length do
      result['a'] +=  director_data[:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end
    puts result
    return result
  end
