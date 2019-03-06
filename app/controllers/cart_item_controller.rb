class CartItemController < ApplicationController
  before_action :authenticate_user, only: [:show, :index , :create , :update]

  def new
    @cart_item = CartItem.new
  end

  def create
    @cart_item = CartItem.new(item_id: params[:id], cart_id: current_user.cart.id)
    if @cart_item.save
      flash[:notice] = "add cart successfully"
      redirect_to request.referrer
    else
      flash[:notice] = "add cart fail"
      redirect_to request.referrer
    end
  end

  def update

  end

  def show
    @cart_item = CartItem.find(params[:id])
    puts  "tried ********************$"
  end

  def destroy
    puts  "tried  delete ********************$"
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to request.referrer
  end
end
