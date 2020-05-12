class AddressesController < ApplicationController
  before_action :set_address, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  respond_to :html

  def index
    @addresses = Address.all
    respond_with(@addresses)
  end

  def show
    respond_with(@address)
  end

  def new
    @address = current_user.addresses.build
    respond_with(@address)
  end

  def edit
  end

  def create
    @address = current_user.addresses.build(address_params)
    @address.save
    respond_with(@address)
  end

  def update
    @address.update(address_params)
    respond_with(@address)
  end

  def destroy
    @address.destroy
    respond_with(@address)
  end

  private
    def set_address
      @address = Address.find(params[:id])
    end

    def address_params
      params.require(:address).permit(:address, :city, :state, :country, :user_id, :resume_id, :office_address, :stay, :current_address, :permenent_address)
    end
end
