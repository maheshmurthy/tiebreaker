require 'minitest/autorun'
require './tie_breaker'

class TieBreakerTest < Minitest::Test

  def setup
    @tie_breaker = TieBreaker.new
    @tie_breaker.handicaps = [16,2,18,14,12,6,8,10,4,13,9,1,11,17,15,7,5,3]
  end

  def test_return_sorted_scores
    assert_equal [[3,5,3,4,3,4,4,3,4,4,3,4,5,3,4,5,4,5], [3,5,3,4,3,4,4,3,4,4,3,5,4,3,4,5,4,5]], @tie_breaker.break_tie([3,5,3,4,3,4,4,3,4,4,3,5,4,3,4,5,4,5], [3,5,3,4,3,4,4,3,4,4,3,4,5,3,4,5,4,5])
    assert_equal [[3,5,3,4,3,4,4,3,4,4,3,5,4,3,4,5,4,5], [3,5,2,5,3,4,4,3,4,4,3,5,4,3,4,5,4,5]], @tie_breaker.break_tie([[3,5,2,5,3,4,4,3,4,4,3,5,4,3,4,5,4,5], [3,5,3,4,3,4,4,3,4,4,3,5,4,3,4,5,4,5]])
  end

end
