The time complexity of an algorithm can help predict scalability, but it isn’t the only 
metric. ##Space complexity is a measure of the memory required for an algorithm to 
run.
Consider the following code:


int multiply(int a, int b) {
 return a * b;
}


To perform this simple algorithm, Dart needs to allocate space for the two input 
parameters, a and b, as well as space for the return value. The actual size that Dart 
allocates internally depends on the implementation details and where the code is 
running, but whatever the case it’s still a fixed amount of space. Even for very large 
input values, the return value will just overflow; it won’t take more space. That 
means the space complexity for this algorithm is constant, and so the Big O 
notation is O(1).
However, now take a look at this example:

List<String> fillList(int length) {
 return List.filled(length, 'a');
}


This algorithm creates a list filled with the string 'a'. The larger length is, the 
longer the list will be and thus the more space will be required to store the list in 
memory. Since the space increases proportionally with the input value, the space 
complexity of this algorithm is linear and the Big O notation is O(n).
With one small change you could make that algorithm have quadratic space 
complexity:


List<String> stuffList(int length) {
 return List.filled(length, 'a' * length);
}


Not only do larger values for length make the list longer, they also increase the size 
of the string in each element of the list. Specifying 5 for length would create a list of 
length 5 whose elements are 'aaaaa'. As with quadratic time complexity, the Big O 
notation for quadratic space complexity is O(n²)