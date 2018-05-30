class PetsController < InheritedResources::Base

  private

    def pet_params
      params.require(:pet).permit(:name, :image)
    end
end

