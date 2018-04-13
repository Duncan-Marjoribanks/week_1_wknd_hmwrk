# def pet_shop_name(shop_name)
#   return shop_name[:name]
# end
#
# def total_cash(shop)
#   return shop[:admin][:total_cash]
# end


# def add_or_remove_cash(shop, amount)
#   return shop[:admin][:total_cash] += amount
# end
#
# def total_cash(shop)
#   return shop[:admin][:total_cash]
# end

# def pets_sold(shop)
#  return shop[:admin][:pets_sold]
# end
#
# def increase_pets_sold(shop, sold)
#   return shop[:admin][:pets_sold] =+ sold
# end

# def stock_count(shop)
#   return shop[:pets].length
# end
#
def pets_by_breed(shop, breed)
total_breed_count = []
for breed in shop[:pets][:breed]
  total_breed_count += 1
end
return total_breed_count
end
