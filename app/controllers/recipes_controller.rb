class RecipesController < ApplicationController


    def index 
        recipes = Recipe.all
        render json: recipes
    end 

    def create 
        recipe = @current_user.recipes.create!(create_params)
        render json: recipe, status: :created
    end

    private 

    def create_params
        params.permit(:title, :instructions, :minutes_to_complete)
    end

end
