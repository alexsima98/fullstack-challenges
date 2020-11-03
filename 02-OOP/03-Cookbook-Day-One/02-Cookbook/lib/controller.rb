require 'view'
require 'recipe'
require 'cookbook'
class Controller
  def initialize(cookbook)
    @view = View.new
    @cookbook = cookbook
  end

  def list
    @recipes
  end

  def create
    recipe = Recipe.new(@view.ask_name, @view.ask_description)
    @cookbook.add(recipe)
  end

  def destroy
    recipe_index = @view.ask_index
    @cookbook.remove(recipe_index)
  end
end
