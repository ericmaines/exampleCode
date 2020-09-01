# September 1, 2020
# ermx
# This program will determine if a number is prime, and will also list primes in a range

class userNum:
    def __init__(self,number):
        self.num = number

    def check(self):
        for n in range (2, self.num):
            if (self.num % n == 0 ):
               print(self.num, " is not prime")
               print(n, "times", self.num//n, "gives us", self.num)
               break
        else:
            print(self.num, " is prime!")


class printPrime(userNum):
    def __init__(self, number, lower):
        super().__init__(number)
        self.lower = lower

    def print_primes(self):
        print("Numbers in the range from", self.lower, "to", self.num)
        for n in range (self.lower, self.num):
            for m in range(2, n):
                if (n % m == 0):
                    break
            else:
                print(n)


num = int(input("upper bound (Number you want checked): "))
#lower = int(input("lower bound: "))
foo = userNum(num)
foo.check()
#foi = printPrime(num, lower)
#foi.print_primes()
