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