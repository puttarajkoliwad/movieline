class Payment < ApplicationRecord
  attr_accessor :card_number, :card_cvv, :card_expires_month, :card_expires_year, :card_name
  belongs_to :wallets

  def self.month_options
    Date::MONTHNAMES.compact.each_with_index.map { |name, i| ["#{i+1} - #{name}", i+1] }
  end

  def self.year_options
    (Date.today.year..(Date.today.year + 10)).to_a
  end

  def process_payment
    customer = Stripe::Customer.create email: email, name: "card_holder_name", source: 'tok_visa',
                                        address: { line1: '510 Townsend St', postal_code: '98140', city: 'San Francisco', state: 'CA', country: 'US' }
    Stripe::Charge.create customer: customer.id, amount: 1000, description: 'Recharge wallet', currency: 'inr'
  end
  
end