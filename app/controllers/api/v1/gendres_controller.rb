module Api
  module V1
    class GendresController < V1Controller


      def create
        @gender = Gender.new(gender_params)
        if @gender.save
          render json: @gender
        else
          render json: @gender.errors
        end
      end

      def update
        if @gender.update(gender_params)
          render json: @gender
        else
          render json: @gender.errors
        end
      end

      def destroy
        @gender.destroy
        render json: "Gender was successfully destroyed."
      end

      private

      def set_gender
        @gender = Gender.find(params[:id])
      end

      def gender_params
        params.require(:gender).permit(:image, :name {film_ids: []})
      end
    end
  end
end