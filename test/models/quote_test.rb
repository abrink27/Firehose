require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
   test "unique tag" do
   	quote = FactoryGirl.create(:quote, :author => 'Andrew Brink')
   	expected = 'AB#' + quote.id.to_s
    actual = quote.unique_tag
    assert_equal expected, actual

   end
end
