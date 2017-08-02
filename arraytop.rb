
puts "Init Array m"
m = Array.new(1000) { rand(100) }

puts "Init integer n"
n = 10

def arraytop m, n, unique = true
  top = Array.new

  m.each { |i|
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