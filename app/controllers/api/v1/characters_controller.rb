module Api
  module V1
    class CharactersController < V1Controller
      before_action :set_character, only: %i[update destroy show]
      

      def characters_list
        @characters = Character.all
        render :json => @characters.to_json(:only => [:id, :name, :image])
      end

      def character_detail
        @character = Character.find(params[:id])
        render :json => @character.to_json(:include => :films)
      end

      def character_find_by
        @character = Character.all
        
        @character = @character.where('name ILIKE ?', "%#{params[:name]}%") if params[:name] 
        render json: @character
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
