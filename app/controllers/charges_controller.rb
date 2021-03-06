class ChargesController < ApplicationController

  def new
    @charge = Charges.new
  end

  def create
    # Amount in cents
    @amount = Donation.find(params[:charges][:donation_id])

    customer = Stripe::Customer.create(
      :email => 'example@stripe.com',
      :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount.price * 100,
      :description => 'RubyConf Sponsorship',
      :currency    => 'usd'
    )

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to charges_path
  end

end
