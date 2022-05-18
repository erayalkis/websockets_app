class CommissionsController < ApplicationController

  def index
    @commissions = Commission.all

    if @commissions
      render json: @commissions
    else
      render json: { error: 'Commissions not found!' }, status: 404
    end
  end

  def show
    @commission = Commission.find(params[:id])

    if @commission
      render json: @commission
    else
      render json: { error: 'Commission not found!' }, status: 404
    end
  end

  def update
    @commission = Commission.find(params[:id])

    if @commission.update!(commission_params)
      render json: @commission
    else
      render json: @commission.errors.full_messages
    end
  end

  def destroy
    @commission = Commission.find(params[:id])
    @commission.destroy
  end

  private

  def commission_params
    params.require(:commission).permit(:artist_id, :commissioner_id)
  end
end
