class Car
  attr_reader :name, :monthly_payment, :loan_length, :total, :color

  def initialize(name, payment, loan_length)
    @name = name,
    @monthly_payment = payment,
    @loan_length = loan_length
    @color = nil
  end

  def make
    make = name[0].split(" ")
    make.first
  end

  def model
    model = name[0].split(" ")
    model.last
  end

  def total_cost
    total_loan = monthly_payment * loan_length
  end

  def paint!(color)
    @color = color
  end
end
