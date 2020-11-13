require_relative 'view'
require_relative 'recipe'
require_relative 'cookbook'
class Controller
  def initialize(cookbook)
    @view = View.new
    @cookbook = cookbook
  end

  def list
    display_recipes
  end

  def create
    recipe = Recipe.new(@view.ask_name, @view.ask_description)
    @cookbook.add_recipe(recipe)
  end

  def destroy
    recipe_index = @view.ask_index
    @cookbook.remove_recipe(recipe_index)
  end
end
