# def joinor(arr, delim=', ', word='or')
#   if arr.size == 2
#     puts "#{arr[0]}#{delim}or #{arr[1]}"
#   elsif arr.size == 3
#     puts "#{arr[0]}#{delim}#{arr[1]}#{delim}#{word} #{arr[2]}"
#   end
# end
#
# joinor([1, 2])
# joinor([1, 2, 3])
# joinor([1, 2, 3], '; ')
# joinor([1, 2, 3], ', ', 'and')

def joinor(arr, delimiter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end

puts joinor([1, 2])
puts joinor([1, 2, 3])
puts joinor([1, 2, 3], '; ')
puts joinor([1, 2, 3], ', ', 'and')
