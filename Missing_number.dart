void main() {
  //taking an array Named input
  var input = [1, 2, 3, 4, 5, 6, 8, 9];

  int sum = 0;
  int arSum = 0;
  int z = 0;
  for (z = 0; z < input.length; z++) {
    arSum = arSum + input[z]; //sum of elements of array
    sum = sum + (z + 1); //sum of 1 to N-1 elements
  }

  sum = sum + (z + 1); // sum of Nthe element
  print(sum - arSum); //printing the missing elements
}
