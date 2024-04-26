# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

#pp @candidates

qc = qualified_candidates(@candidates)
puts "#{qc}"