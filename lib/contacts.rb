

  # This is the array we will be passing into the remove_strawberry method

  # contacts = {
  #   "Jon Snow" => {
  #     name: "Jon",
  #     email: "jon_snow@thewall.we",
  #     favorite_ice_cream_flavors: ["chocolate", "vanilla"]
  #   },
  #   "Freddy Mercury" => {
  #     name: "Freddy",
  #     email: "freddy@mercury.com",
  #     favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
  #   }
  # }


=begin
def remove_strawberry(contacts)
   contacts["Freddy Mercury"].each do |name, value|
      if name == :favorite_ice_cream_flavors
        contacts["Freddy Mercury"][name].shift
      end
    end
    return contacts
 end
=end

def remove_strawberry(contacts)
  contacts.each do |name, details|
    if name == "Freddy Mercury"
      details.each do |key, value|
        if key == :favorite_ice_cream_flavors
          value.delete {|flavor| flavor == "strawberry"}
        end
      end
    end
end
