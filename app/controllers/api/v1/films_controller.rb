module Api
  module V1
    class FilmsController < V1Controller
      before_action :set_film, only: %i[update destroy show]

      def movies
        @films = Film.all
        render :json => @films.to_json(:only => [:id, :title, :image, :premiere])
      end

      def movie_details
        @film = Film.find(params[:id])
        render :json => @film.to_json(:include => :characters)
      end

      def create
        @film = Film.new(film_params)
        if @film.save
          render json: @film
        else
          render json: @film.errors
        end
      end

      def update
        if @film.update(film_params)
          render json: @film
        else
          render json: @film.errors
        end
      end

      def destroy
        @film.destroy
        render json: "film was successfully destroyed."
      end

      private
      def set_film
        @film = Film.find(params[:id])
      end

      def film_params
        params.require(:film).permit(:title, :image, :premiere, :average, {character_ids: []})
      end


    end
  end
end
