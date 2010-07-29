class Quotation < ActiveRecord::Base
  def random_quotation
    offset = rand(Quotation.count)
    Quotation.first(:offset => offset)
  end
end
