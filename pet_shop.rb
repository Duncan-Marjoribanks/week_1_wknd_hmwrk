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

# ##########not my work
# def pets_by_breed(shop, breed)
# i = 0
#   total = []
#   for pet in shop[:pets]
#     total.push(pet) if shop[:pets][i][:breed] == breed
#     i +=1
#   end
#   return total
# end
# #########not my work
# def find_pet_by_name(shop, name)
#   i = 0
#   pet = Hash.new
#   for item in shop[:pets]
#          pet = shop[:pets][i] if shop[:pets][i][:name] == name
#     i += 1
#   end
#   return pet
# end

def find_pet_by_name(shop, name)
  i = 0
  pet = Hash.new
  for item in shop[:pets]
    pet = shop[:pets][i] if shop[:pets][i][:name] == name
    i += 1
  end
  if pet.empty?
    return nil
  else
    return pet
  end
end
