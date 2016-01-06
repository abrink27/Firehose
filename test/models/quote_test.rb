require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
   test "unique tag" do
   	quote = Quote.create(:author => 'Andrew Brink', :saying => "chill bro")
   	expected = 'AB#' + quote.id.to_s
    actual = quote.unique_tag
    assert_equal expected, actual

   end
end
