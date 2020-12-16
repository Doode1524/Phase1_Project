# def list_champions
#     col1 = 0
#     col2 = 38
#     col3 = 76
#     col4 = 114

#     standardize

#     while col1 < 38
#         puts "  #{col1+1}.#{Champions.all[col1].name} \t\t #{col2+1}.#{Champions.all[col2].name} \t\t #{col3+1}.#{Champions.all[col3].name} \t\t #{col4+1}.#{Champions.all[col4].name}"
    
#         col1 += 1
#         col2 += 1
#         col3 += 1
#         col4 += 1
#     end
#     champ_detail_menu
# end
    

# def standardize
#     max_length = 38

#     Champions.all.each do |champ|
#         while champ.name.length < max_length
#             champ.name += " "
#         end
#     end
# end


# def list_champions
#     Champions.all.each.with_index(1) do |champion, index|
#         puts "#{index}. #{champion.name}"
#     end
#     champ_detail_menu
# end

# def find_by_name(name)
#     input = name
#     Champions.all.each do |champ|
#         if champ.name == input
#     end

# end

# def self.find_by_name(name)
#     self.all.find do |champ|
#        champ.name == name
#     end
# end

#   def initialize(attributes)
#     attributes.each do |key, value| 
#       self.class.attr_accessor(key)
#       self.send(("#{key}="), value)
#     end
#   end


  

