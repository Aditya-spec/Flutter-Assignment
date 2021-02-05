void main(List<String> args) {
  //giver List
  var arr = [4, 15, 3, 7, 0];

  //declaring an empty list which will store the leaders
  var leaders = [];
  int i = arr.length - 1;
  int j = 0;
  int max = 0;

  while (i >= 0) // iterating from last element to first element
  {
    if (arr[i] >= max) {
      leaders.add(arr[i]);
      max = arr[i];
      j++;
    }
    i--;
  }

  // printing the leaders
  for (int k = j - 1; k >= 0; k--) {
    print(leaders[k]);
  }
}
