class View
  def display(recipes)
    recipes.each_with_index do |recipe, i|
      puts " #{i + 1} - #{recipe.name} : #{recipe.description}"
    end
  end

  def ask_name
    puts "Gimme that recipe name biatch"
    return gets.chomp
  end

  def ask_description
    puts "How dafuq ya'll cook this?"
    return gets.chomp
  end

  def ask_index
    puts "Tell me the numbah'!!"
    return gets.chomp.to_i-1
  end
end
