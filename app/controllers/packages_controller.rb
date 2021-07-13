# frozen_string_literal: true

# packages controller
class PackagesController < ApplicationController
  def create
    @courier = Courier.find(params[:courier_id])
    @package = @courier.packages.new(package_params)

    flash[:error] = @package.errors.full_messages.to_sentence unless @package.save
    redirect_to @courier
  end

  private

  def package_params
    params.require(:package).permit(%i[courier_id])
  end
end
