#h = {:first_name => "Coding", :last_name => "Dojo"}
#1
#h.delete(:last_name)
#puts h
#2
#puts h.empty?
#3
#puts h.has_value?("c")
def new_user user = {first_name: "first", last_name: "last"}
  puts "HELLO WISCONSIN, #{user[:first_name]} #{user[:last_name]}!"
end
our_user = {first_name: 'Spence', last_name: "Peacock"}
new_user our_user # => "Welcome to our site, Oscar Vasquez!"