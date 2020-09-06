class Book < ApplicationRecord
  has_and_belongs_to_many :genres
  belongs_to :library
  has_many :borrowings

  # return a book
  def pass_back( current_user )
    self.borrowings.each do |borrowing|
      if self.borrowingSummary.available
        return false
      else
        if !borrowing.returned && borrowing.user == current_user
          borrowing.returned = DateTime.now
          if borrowing.save()
            return true
          else
            return false
          end
        end
      end
    end
    return false
  end

  def borrow( current_user, duration )
    if self.borrowingSummary.available
      if Borrowing.create(
          user: current_user,
          book: self,
          returns: DateTime.now() + duration )
        return true
      else
        return false
      end
    else
      return false
    end
  end

  def borrowingSummary
    self.borrowings.each do |borrowing|
      if !borrowing.returned
        return BorrowingSummary.new( false, borrowing.user.login, borrowing.returns, self.borrowings.length )
      end
    end
    return BorrowingSummary.new( true, nil, nil, self.borrowings.length )
  end
end

class BorrowingSummary
  @_available = true
  @_count = 0
  @_borrower = nil
  @_returns = nil

  def initialize( count )
    @_available = true
    @_count = count
    @_borrower = nil
    @_returns = nil
  end

  def initialize( available, borrowser, returns, count )
    @_available = available
    @_count = count
    @_borrower = borrowser
    @_returns = returns
  end

  def available
    return @_available
  end

  def borrower
    return @_borrower
  end

  def returns
    return @_returns
  end

  def count
    return @_count
  end
end
