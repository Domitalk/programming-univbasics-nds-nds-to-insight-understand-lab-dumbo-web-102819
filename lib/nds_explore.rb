$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
# Call the method directors_database to retrieve the NDS
directors_database


def pretty_print_nds(nds)
  # Change the code below to pretty print the nds with pp
  pp nds
  nil
end

def print_first_directors_movie_titles
  array_directors_database = directors_database
  first_index = 0
  while first_index < array_directors_database.count do
    second_index = 0
    while second_index < array_directors_database[first_index].count do
      if array_directors_database[first_index][second_index][:name] == "Steven Spielberg"
        third_index = 0
        while third_index < array_directors_database[first_index][second_index].count do
          fourth_index = 0
          while fourth_index < array_directors_database[first_index][second_index][third_index]. count do
            puts array_directors_database[first_index][second_index][third_index][fourth_index][:title]
            fourth_index += 1
          end
          third_index += 1
        end
      end
      second_index += 1
    end
    first_index += 1
  end
end
