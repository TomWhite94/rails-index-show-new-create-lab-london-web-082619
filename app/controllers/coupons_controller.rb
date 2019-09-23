class CouponsController < ApplicationController

def index
    @coupons = Coupon.all
end

def show
    @coupon = Coupon.find(params[:id])
end

def new

end

def create
@create_coupon = Coupon.new
@create_coupon.coupon_code = params[:coupon][:coupon_code]
@create_coupon.store = params[:coupon][:store]
@create_coupon.save

redirect_to coupon_path(@create_coupon)
end

#rails g model user name:string email:string

end