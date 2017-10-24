class ArtworksController < ApplicationController
  def index
    user = User.find_by(id:params[:user_id])

    render json: user.artworks#user.shared_artworks
    # @artworks = Artwork.all
    # if @artworks
    #   render json: @artworks
    # else
    #   render json: @artworks.errors.full_message, status: 404
    # end
  end

  def create
    artwork = Artwork.new(artwork_params)
    if artwork.save
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    artwork = Artwork.find_by(id: params[:id])
    if artwork
      render json: artwork
    else
      render json: 'No artwork found', status: 404
    end

  end

  def update
    artwork = Artwork.find(params[:id])
    if artwork.update(artwork_params)
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: 404
    end
  end

  def destroy
    artwork = Artwork.find(params[:id])
    if artwork.destroy
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: 404
    end
  end

  private
  def artwork_params
    params[:artworks].permit(:artist_id, :title, :image_url)
  end

end
