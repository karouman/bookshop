require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Borrowing first Book" do
    assert Book.first.borrow( User.first, 7 )
  end

  test "Borrowing first Book (already borrowed)" do
    Book.first.borrow( User.first, 7 )
    assert_not Book.first.borrow( User.first, 7 )
  end

  test "Returning first Book" do
    Book.first.borrow( User.first, 7 )
    assert Book.first.pass_back( User.first )
  end

  test "Returning first Book with wrong user" do
    Book.first.borrow( User.first, 7 )
    assert_not Book.first.pass_back( User.last )
  end

  test "Returning a Book twice" do
    Book.first.borrow( User.first, 7 )
    Book.first.pass_back( User.last )
    assert_not Book.first.pass_back( User.last )
  end

end
