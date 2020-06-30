=begin ###psuedocode

if n < 2
    return
else
    sort left half
    sort right half
    merge
=end

def sort(arrayA)
    if arrayA.length <= 1
        return arrayA
    else
        n = arrayA.length/2
        arrayB = arrayA.first(n)
        arrayC = arrayA.last(arrayA.size - n)
        merge(sort(arrayB), sort(arrayC))
    end
end

def merge(arrayB, arrayC)
    arrayA = []
    loop do
        if arrayB.first <= arrayC.first
            arrayA.push(arrayB.first)
            arrayB.shift
        else
            arrayA.push(arrayC.first)
            arrayC.shift
        end
        if arrayB.size == 0 || arrayC.size == 0
            arrayB.size == 0 ? arrayA.push(arrayC) : arrayA.push(arrayB)
            break
        end
    end
    arrayA.flatten
end

arr = [35, 23, 87, 1, 1, 1, 15, 16, 27, 95, 2, 105, 3, 17, 24]

puts "#{sort(arr)}"

arr = []

puts "#{sort(arr)}"