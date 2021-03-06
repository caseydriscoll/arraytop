
puts "Init Array m"
m = Array.new(100000) { rand(1000) }

puts "Init integer n"
n = 100

def arraytop m, n, want_unique = true
  top = Array.new

  m.each { |i|
    next if want_unique && top.include?(i)

    if top.length < n
      top.push i
    elsif i > top.last then
      top.pop
      top.push
    end

    top.sort!.reverse!
  }

  top
end

puts (arraytop m, n).inspect