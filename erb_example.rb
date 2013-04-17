require 'erb'

x = 42
y = "The meaning of everything is #{x}"
favorite_things_sfw = ['good beer', 'cigarettes', 'nsfw']
beer = { favorite: 'dogfish head' }

template = ERB.new "The value of x is: <%= x %>
                    <%= y %>
                    <% favorite_things_sfw.each do |thing| %>
                      I love <%= thing %>
                    <% end %>
                    My favorite brewer is <%= beer[:favorite] %>"

puts template.result(binding)