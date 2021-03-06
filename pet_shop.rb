####################################
# test 1
####################################
def pet_shop_name(shop_name)
  return shop_name[:name]
end
####################################


####################################
# test 2
####################################
def total_cash(shop)
  return shop[:admin][:total_cash]
end
####################################


####################################
# test 3 a + b
####################################
def add_or_remove_cash(shop, amount)
  return shop[:admin][:total_cash] += amount
end
####################################


####################################
# test 4
####################################
def pets_sold(shop)
 return shop[:admin][:pets_sold]
end
####################################


####################################
# test 5
####################################
def increase_pets_sold(shop, sold)
  return shop[:admin][:pets_sold] =+ sold
end
####################################


####################################
# test 6
####################################
def stock_count(shop)
  return shop[:pets].length
end
####################################


####################################
# test 7 a + b
####################################
def pets_by_breed(shop, breed)
  total = Array.new
  for animal in shop[:pets]
    total.push(animal) if animal[:breed] == breed
  end
  return total
end
####################################


####################################
# # test 8 a + b
# ##################################
def find_pet_by_name(shop, name)
  for animal in shop[:pets]
      return animal if animal[:name] == name
  end
  return nil
end
####################################


####################################
# test 9
####################################
def remove_pet_by_name(shop, name)
  for animal in shop[:pets]
      shop[:pets].delete(animal) if animal[:name] == name
  end
end
####################################


####################################
# test 10
####################################
def add_pet_to_stock(shop, new_pet)
  shop[:pets].push(new_pet)
end
####################################


####################################
# test 11
####################################
def customer_cash(customer)
  return customer[:cash]
end
####################################


####################################
# test 12
####################################
def remove_customer_cash(customer, amount)
  return customer[:cash] -= amount
end
####################################


####################################
# test 13
####################################
def customer_pet_count(customer)
  return customer[:pets].length
end
#####################################


#####################################
# # test 14
#####################################
def add_pet_to_customer(customer, new_pet)
  return customer[:pets].push(new_pet)
end
#####################################



#####################################
#####################################
# # OPTIONAL TESTS
#####################################
#####################################


#####################################
# # Opt test 1 a + b
#####################################
#   def customer_can_afford_pet(customer, new_pet)
#     return false if customer[:cash] < new_pet[:price]
#     return true if customer[:cash] >= new_pet[:price]
#   end
# #### Alt solution #################
  def customer_can_afford_pet(customer, new_pet)
    if customer[:cash] < new_pet[:price]
      return false
    else
      return true
    end
  end
#####################################


#####################################
# # Opt test 2 a + b + c
#####################################
  # def sell_pet_to_customer(shop, animal, customer)
  #   unless animal == nil
  #     if customer_can_afford_pet(customer, animal) == true
  #       customer[:pets] << animal
  #       shop[:admin][:pets_sold] += 1
  #       customer[:cash] -= animal[:price]
  #       shop[:admin][:total_cash] += animal[:price]
  #       # shop[:pets].delete(animal)      # optional and not tested for
  #     end
  #   end
  # end
########alternative solution#########
####calling the previous functions###
def sell_pet_to_customer(shop, animal, customer)
  unless animal == nil
    if customer_can_afford_pet(customer, animal) == true
      add_pet_to_customer(customer, animal)
      increase_pets_sold(shop, 1)
      remove_customer_cash(customer, animal[:price])
      add_or_remove_cash(shop, animal[:price])
      # shop[:pets].delete(animal)      # optional and not tested for
    end
  end
end
#####################################

#####################################

#############   Fin   ###############

#####################################
