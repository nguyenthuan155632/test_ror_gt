module CarsHelper
  def format_currency number
    number_to_currency(number, :unit => "$", precision: 0)
  end
end
