
def burger(patty, sauce, topping)
  # TODO: code the `burger` method
  if block_given?
    main = yield(patty)
  else
    main = patty
  end
  ["bread", main, sauce, topping, "bread"]
end
