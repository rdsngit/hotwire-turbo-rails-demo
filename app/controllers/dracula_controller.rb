# frozen_string_literal: true

class DraculaController < ApplicationController
  def index; end

  def image
    image_param = params[:image]
    image_file = case image_param
                 when 'novel'
                   'dracula/novel.jpg'
                 when 'castle'
                   'dracula/castle.jpg'
                 else
                   'dracula/novel.jpg' # Default image
                 end

    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: turbo_stream.replace(
          'dracula_image',
          partial: 'dracula/image',
          locals: { file: image_file }
        )
      end
      format.html { redirect_to action: :index }
    end
  end
end
