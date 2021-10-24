require 'minitest/autorun'
require 'minitest/pride'
require 'json'
require 'pry'
require_relative '../lib/title_case'

class TiteTest < MiniTest::Test
    def setup
        @title = Title.new
    end

    def test_it_squares
        assert_equal '', @title.title_case('')
        assert_equal 'The Stand', @title.title_case('the Stand')
        assert_equal 'A Clash of Kings', @title.title_case('a clash of KINGS', 'a an the of')
        assert_equal 'The Wind in the Willows', @title.title_case('THE WIND IN THE WILLOWS', 'The In')
        assert_equal 'The Quick Brown Fox', @title.title_case('the quick brown fox')
    end
end