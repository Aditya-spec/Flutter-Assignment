void main() {
  var check = "hello"; //First String
  var meck = "lleoh"; //Second String
//Commiting on the remote repo
  
  
  
  //first checking lengths of both strings are equal or not
  // if lenghts are not equal then Strings will not be anagram
  if (check.length == meck.length) {
    //convertin Strings to array using split() method
    var first = check.split("");
    var second = meck.split("");

    //Sorting String array
    first.sort();
    second.sort();
    var flag = 0;

// Comparing both array elements
    //if all are equal to each other, then Strings are anagram
    //else Strings are not anagram
    for (int i = 0; i < first.length; i++) {
      if (first[i] != second[i]) {
        print("Strings are not anagram");
        flag = 1;
        break;
      }
    }
    if (flag == 0) {
      print("Strings are  anagram");
    }
  } else {
    print("Strings are not anagram");
  }
}

