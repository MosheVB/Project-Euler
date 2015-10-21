require 'prime'

def find_devisors_length(n)
    p = 2
    divisor = 1
    if Prime.prime?(n)
        return 2
    end
        while n != 1
            # puts "starting loop"
         count = 1
            while n % p == 0
                count += 1
                # puts "divisor = #{divisor} count = #{count} and p = #{p}  n = #{n}"
                n = n/p
            end
                divisor *= count
            if p == 2
                p += 1
            else
                p += 2
            end
        end
    return divisor
end

def create_triangular_number(stop)
    triangle = 1
    # a triangle number can be written as 1+2+...+n = (n*(n+1))/2 
    while find_devisors_length(triangle*(triangle+1)/2) < stop
        triangle = triangle + 1
        # puts "Triangle number #{y}"
    end
    puts final = triangle*(triangle+1)/2
    return final
end
 
create_triangular_number(500)