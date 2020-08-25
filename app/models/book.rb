class Book < ApplicationRecord
  has_and_belongs_to_many :genres
  belongs_to :library
  has_many :borrowings

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
