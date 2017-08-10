#Sum of 'n' Numbers
#sum_of_n takes an integer n and returns a Array of length abs(n) + 1. The Array contains the numbers in the arithmetic series produced by #taking the sum of the consecutive integer numbers from 0 to n inclusive.
#n can also be 0 or a negative value.
#Example:
#5 -> [0, 1, 3, 6, 10, 15]
#-5 -> [0, -1, -3, -6, -10, -15]
=================================================================================================

def sum_of_n(n)
a=n+1
i=0
A=[]
for x in  range(0,a):
b=(x*(x+1)*0.5)
        A.append(int(b))
    return A
print sum_n(5)
print sum_n(-5)


