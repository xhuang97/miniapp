# require needed files
require './test/sets/courses'
require './test/sets/inputs'

module Contexts
  # explicitly include all sets of contexts used for testing
  include Contexts::Inputs
  include Contexts::Courses
end
