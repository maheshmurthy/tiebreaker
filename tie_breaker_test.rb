require 'minitest/autorun'
require './tie_breaker'

class TieBreakerTest < Minitest::Test

  def setup
    @tie_breaker = TieBreaker.new
    @tie_breaker.pars = [4,5,4,4,3,4,4,3,5,4,4,5,4,3,4,4,4,4]
    @tie_breaker.handicaps = [16,2,18,14,12,6,8,10,4,13,9,1,11,17,15,7,5,3]
  end

  def test_return_if_only_one_score
    assert_equal [], @tie_breaker.sort_scores([])
  end

end
