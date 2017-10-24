class ArtworkSharesController < ApplicationController
  def create
    artwork = ArtworkShare.new(artwork_shares_params)
    if artwork.save
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    artwork = ArtworkShare.find_by(id: params[:id])
    if artwork
      if artwork.destroy
        render json: artwork
      else
        render json: artwork.errors.full_messages, status: 404
      end
    else
      render json: 'error artwork cannot be found', status: 404
    end
  end

  private
  def artwork_shares_params
    params[:artwork_shares].permit(:artwork_id, :viewer_id)
  end

end
