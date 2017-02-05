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
    same_breed_array.push(animal) if (animal[:breed] == breed)
  end
  return same_breed_array
end

def find_pet_by_name(shop, pet_name)
  for pet in shop[:pets]
    return pet if (pet[:name] == pet_name)
  end
  return nil
end

def remove_pet_by_name(shop, pet_name)
  for pet in shop[:pets]
    shop[:pets].delete(pet) if (pet[:name] == pet_name)
  end
end

def add_pet_to_stock(shop, new_pet)
  shop[:pets].push(new_pet)
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

def customer_can_afford_pet(customer, new_pet)
  if (customer[:cash] >= new_pet[:price])
    return true
  else 
    return false
  end
end

def sell_pet_to_customer(pet_shop, pet, customer)

  if pet != nil
  customer[:pets].push(pet)
  pet_shop[:pets].delete(pet)
  pet_shop[:admin][:pets_sold] += 1
  pet_shop[:admin][:total_cash] += pet[:price]
  end
end