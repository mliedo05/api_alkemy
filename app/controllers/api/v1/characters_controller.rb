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
        if params[:name].present?
          @character = @character.character_by_name(params[:name]) 
        elsif params[:age].present?
          @character = @character.character_by_age(params[:age])
        elsif params[:weight].present?
          @character = @character.character_by_weight(params[:weight])
        elsif params[:movies].present?
          @character = Film.character_by_movie(params[:movies])
        end
        
        if @character.exists? || @character != nil
          render json: @character.to_json(:include => :films)
        else 
          render json: "No value to search"
        end
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
