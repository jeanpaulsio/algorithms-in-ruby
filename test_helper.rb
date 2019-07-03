require 'minitest/autorun'
require 'minitest/reporters'
require './utils'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

include Utils
