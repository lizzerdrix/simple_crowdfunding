class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def checkout
    @sponsors = Order.all.count
  end

  def create
    @order = Order.new(order_params)

      # Amount in cents
      @amount = @order.price

      customer = Stripe::Customer.create(
        :email => 'example@stripe.com',
        :card  => params[:stripeToken]
      )

      charge = Stripe::Charge.create(
        :customer    => customer.id,
        :amount      => @amount,
        :description => 'Rails Stripe customer',
        :currency    => 'usd'
      )

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to root_path

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:token, :transaction_id, :address_one, :address_two, :city, :state, :zip, :country, :status, :number, :uuid, :user_id, :price, :phone, :name)
    end
end
