######################################
# # test 1
#####################################
# def pet_shop_name(shop_name)
#   return shop_name[:name]
# end
######################################

#####################################
# # test 2
#####################################
# def total_cash(shop)
#   return shop[:admin][:total_cash]
# end
#####################################

#####################################
# # test 3 a + b
#####################################
# def add_or_remove_cash(shop, amount)
#   return shop[:admin][:total_cash] += amount
# end
#
# def total_cash(shop)
#   return shop[:admin][:total_cash]
# end
#####################################

#####################################
# # test 4
#####################################
# def pets_sold(shop)
#  return shop[:admin][:pets_sold]
# end
#####################################

#####################################
# # test 5
#####################################
# def increase_pets_sold(shop, sold)
#   return shop[:admin][:pets_sold] =+ sold
# end
#####################################

#####################################
# # test 6
#####################################
# def stock_count(shop)
#   return shop[:pets].length
# end
#####################################

#####################################
# # test 7 a + b
# ##########not my work##############
# def pets_by_breed(shop, breed)
# i = 0
#   total = []
#   for pet in shop[:pets]
#     total.push(pet) if shop[:pets][i][:breed] == breed
#     i +=1
#   end
#   return total
# end
#
# # test 7 a + b
######## my work ###################
# def pets_by_breed(shop, breed)
#   total = Array.new
#   for animal in shop[:pets]
#     total.push(animal) if animal[:breed] == breed
#   end
#   return total
# end
####################################

####################################
# # test 8 a
# ######### not my work ############
# def find_pet_by_name(shop, name)
#   i = 0
#   pet = Hash.new
#   for item in shop[:pets]
#          pet = shop[:pets][i] if shop[:pets][i][:name] == name
#     i += 1
#   end
#   return pet
# end
#####################################

#####################################
# # test 8 b
##### my work but weird #############
#### using the not my work way ######
# def find_pet_by_name(shop, name)
#   i = 0
#   pet = Hash.new
#   for item in shop[:pets]
#     pet = shop[:pets][i] if shop[:pets][i][:name] == name
#     i += 1
#   end
#   if pet.empty?
#     return nil
#   else
#     return pet
#   end
# end
#####################################

#####################################
# # test 8 a + b
# ######### my work #################
# def find_pet_by_name(shop, name)
#   for animal in shop[:pets]
#       return animal if animal[:name] = name
#   end
# end
#####################################

#####################################
# # test 9
#####################################
# def remove_pet_by_name()
#     i = 0
#     pet = Hash.new
#     for item in shop[:pets]
#       pet = shop[:pets][i] if shop[:pets][i][:name] == name
#       i += 1
#     end
#     if pet.empty?
#       return nil
#     else
#       shop[:pets][i-1][:name] == nil
#     end
# end
#
# # test 9
# def remove_pet_by_name(shop, name)
#   for animal in shop[:pets]
#       shop[:pets].delete(animal) if animal[:name] == name
#   end
# end
#####################################

#####################################
# # test 10
#####################################
# def add_pet_to_stock(shop, new_pet)
#   shop[:pets].push(new_pet)
# end
# def stock_count(shop)
#   return shop[:pets].length
# end
#####################################

#####################################
# # test 11
#####################################
# def customer_cash(customer)
#   return customer[:cash]
# end
#####################################

#####################################
# # test 12
#####################################
 # def remove_customer_cash(customer, amount)
 #   return customer[:cash] -= amount
 # end
 #####################################

 #####################################
# # test 13
#####################################
# def customer_pet_count(customer)
#   return customer[:pets].length
# end
#####################################

#####################################
# # test 14
#####################################
# def customer_pet_count(customer)
#   return customer[:pets].length
# end
#
# def add_pet_to_customer(customer, new_pet)
#   return customer[:pets].push(new_pet)
# end
#####################################


#####################################
# # OPTIONAL
#####################################
