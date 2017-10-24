class ArtworkShareController < ApplicationController

  def create
    artwork = ArtworkShare.new(artwork_shares_params)
    if artwork.save
      render json: artwork
    else
      render json: 'error when saving artwork_share', status: :unprocessable_entity
    end
  end

  def destroy
    artwork = ArtworkShare.find_by(id: params[:id])
    if artwork && artwork.destroy
      render json: artwork
    else
      render json: 'error when deleting artwork_share', status: 404
    end
  end

  private
  def artwork_shares_params
    params[:artwork_shares].permit(:artwork_id, :viewer_id)
  end


end
