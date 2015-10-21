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
    while find_devisors_length(triangle*(triangle+1)/2) < stop
        triangle = triangle + 
        y = find_devisors_length(triangle*(triangle+1)/2)
        puts "Triangle number #{y}"
    end
    
    return triangle*(triangle+1)/2
end

# def find_triangle(divisor_count)
#         n = 1
#     while (find_devisors_length(n) * find_devisors_length(n+1)) < divisor_count
#         n +=1
#      end
#      return n
# end

 # index = find_triangle(500)
 # puts (index * (index + 1))
 # puts num_divisors(3)


# puts find_devisors_length( 35814240)
# puts find_devisors_length(1 )
 create_triangular_number(500)