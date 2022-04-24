module Api
  module V1
    class CharactersController < V1Controller
      before_action :set_character, only: %i[update destroy show]
      

      def show
        render :json => @character.to_json(:only => [:id, :name, :image])
      end

      def create
        @character = Character.new(character_params)
        if @character.save
          render json: @character
        else
          render json: @character.errors
        end
      end

      def update
        if @character.update(character_params)
          render json: @character
        else
          render json: @character.errors
        end
      end

      def destroy
        @character.destroy
        render json: "destroyed character"
      end

      private

      def set_character
        @character = Character.find(params[:id])
      end

      def character_params
        params.require(:character).permit(:image, :name, :age, :weight, :history, {film_ids:[]})        
      end

    end
  end 
end
