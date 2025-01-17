require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }


def directors_totals(nds)
  result = {}
  
  index2 = 0
  while index2 < nds.length
    index = 0
    director_name = nds[index2][:name]
    director_gross = 0
      while index < nds[index2][:movies].length
        director_gross += nds[index2][:movies][index][:worldwide_gross]
        index += 1
      end
    index2 += 1
    
    new_hash[director_name] = director_gross
  end
  p new_hash
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
$new_hash = directors_totals($directors_database)


def gross_for_director(director_data)
  p $new_hash[director_data]
end











