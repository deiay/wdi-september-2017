bears = ['Cheer','Fundshine','Love-a-lot','Grumpy']

# def list_item_bears_each(bears)
#   bears.each do |bear|
#     puts " <li>#{bear} Bear battles preofessor Coldheart</li>\n"
#   end
# end
#
# puts '<ul>'
# list_item_bears_each(bears)
# puts '</ul>'


list_item_bears_map = bears.map do |bear|
    " <li>#{bear} Bear battles preofessor Coldheart</li>\n"
  end

  puts '<ul>'
  list_item_bears_map
  puts '</ul>'
