$data = Array.new

def readFile
    File.open(ARGV[0], "r") do |f|
      f.each_line do |line|
        if line != " " or line != ""
            $data.push(line)
        end
      end
    end
end

def sorteio
    size = $data.length - 1
    prng1 = Random.new(Random.new_seed)
    prng1.seed
    rdn = prng1.rand(0..size) 
    return $data[rdn]
end

readFile
puts(sorteio)
