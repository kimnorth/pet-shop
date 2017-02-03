def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, cash_amount)
  new_total = shop[:admin][:total_cash] += cash_amount
  return new_total
end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, increase)
  shop[:admin][:pets_sold] += increase 
end

def stock_count(shop)
  return shop[:pets].length()
end

def pets_by_breed(shop, breed) # need to return an array that gets searched by the test function call with .count
  same_breed_array = []
  for animal in shop[:pets]
    if (animal[:breed] == breed)
      same_breed_array.push(animal)
    end
  end
  return same_breed_array
end