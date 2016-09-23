

# this is wacky but supposidely works
# https://jdanger.com/calculating-factorials-in-ruby.html
def factorial(n)
	n.downto(1).reduce(:*)
 end
 
 class Fac
	def initialize(n)
		@currentN
	end
	 def fact(n)
	 
	 end
	def product(n)
		halfN = n / 2;
		if halfN == 0 then
			return @currentN += 2
		elsif n==2
			return (@currentN += 2) * (@currentN += 2)
		else
          return Product(n - m) * Product(m);
        end
	end
 end # Fac
    8:  namespace Sharith.Math.Factorial 

   9:  {

      using XInt = Sharith.Arithmetic.XInt;
      using XMath = Sharith.Math.MathUtils.XMath;
   
      public class Split : IFactorialFunction 
      {
          public Split() { }
   
          public string Name
          {
              get { return "Split               "; }
          }
   
          private XInt currentN;
   
          public XInt Factorial(int n)
          {
              if (n < 0)
              {
                  throw new System.ArgumentOutOfRangeException("n",
                  Name + ": n >= 0 required, but was " + n);
              }
   
              if (n < 2) return XInt.One;
   
              XInt p = XInt.One;
              XInt r = XInt.One;
              currentN = XInt.One;

              int h = 0, shift = 0, high = 1;
              int log2n = XMath.FloorLog2(n);
   
              while (h != n)
              {
                  shift += h;
                  h = n >> log2n--;
                  int len = high;
                  high = (h - 1) | 1;
                  len = (high - len) / 2;
   
                  if (len > 0)
                  {
                      p *= Product(len);
                      r *= p;
                  }
              }
   
              return r << shift;
          }
 
          private XInt Product(int n)
          {
              int m = n / 2;
              if (m == 0) return currentN += 2;
              if (n == 2) return (currentN += 2) * (currentN += 2);
              return Product(n - m) * Product(m);
          }
      }
  } // endOfFactorialBinSplit
 
def piChudnovsky(iterations=20)
 
 #j-function j((1+sqrt(-163)/2) = -640320^^3
 
 piInv = 12 * sum
	toSum = (1..iterations).map{|k|
		(-1^^k) * 
	}
 
 Set k_1 = 545140134; k_2 = 13591409; k_3 = 640320; k_4 = 100100025; k_5 = 327843840; k_6 = 53360;

Then pi = (k_6 sqrt(k_3))/(S), where

S = sum_(n = 0)^oo (-1)^n ((6n)!(k_2 + nk_1))/(n!^3(3n)!(8k_4k_5)^n)

end

puts piChudnovsky